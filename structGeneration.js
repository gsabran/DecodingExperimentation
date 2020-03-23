const fs = require('fs');

// Change those 4 parameters
const propertiesPerElement = 6 // The number of properties for each type
const chanceToAddASubtype = 0.5 // (+ exponential backoff) The chance that a given property will be of a new type
const chanceHaveTheElementBeAnArray = 0.2 // The change that a given property will be an array of elements
const numberOfElementPerArray = 30 // The number of elements in each array (they are identitical)


const jsonFilePath = './DecodableExperimentation/stubData.json';
const basicTypeFilePath = './DecodableExperimentation/BasicType.swift';
const decodableTypeFilePath = './DecodableExperimentation/DecodableType.swift';
const binaryFilePath = './DecodableExperimentation/ProtobufType.swift';

/** Generate a random string of the given length */
function makeid(length) {
   var result           = '';
   var characters       = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
   var charactersLength = characters.length;
   for ( var i = 0; i < length; i++ ) {
      result += characters.charAt(Math.floor(Math.random() * charactersLength));
   }
   return result;
}

// 1. Generate a random object that corresponds to the input parameters
let n = 0;
const createObject = (depth) => {
  const result = {};
  for (let i=0; i<propertiesPerElement; i++) {
    const newPropertyName = makeid(5);
    if (Math.random() < 1 - Math.pow(chanceToAddASubtype, depth + 1)) {
      result[newPropertyName] = Math.random() > 0.5 ? Math.random() : makeid(10);
      n += 1;
    } else {
      result[newPropertyName] = createObject(depth + 1);
    }
    if (Math.random() < chanceHaveTheElementBeAnArray) {
      const value = result[newPropertyName];
      result[newPropertyName] = Array.from({ length: numberOfElementPerArray }).map(x => value)
    }
  }
  return result;
}

const o = createObject(0);

// 2. Generate the swift code for a Decodable struct corresponding to this object
const toDecodableStruct = (object, name) => {
  const subtypes = [];
  const keyToType = {};

  for (const key of Object.keys(object)) {
    if (Array.isArray(object[key])) {
      if (typeof object[key][0] === 'string') {
        keyToType[key] = '[String]';
      } else if (typeof object[key][0] === 'number') {
        keyToType[key] = '[Double]';
      } else {
        const typeName = `Type_${key}`;
        keyToType[key] = `[${typeName}]`;
        subtypes.push(toDecodableStruct(object[key][0], typeName))
      }
    } else {
      if (typeof object[key] === 'string') {
        keyToType[key] = 'String';
      } else if (typeof object[key] === 'number') {
        keyToType[key] = 'Double';
      } else {
        const typeName = `Type_${key}`;
        keyToType[key] = typeName;
        subtypes.push(toDecodableStruct(object[key], typeName))
      }
    }
  }

  return `
struct ${name}: Decodable {
  ${Object.keys(keyToType).map(key => `let ${key}: ${keyToType[key]}`).join('\n  ')}
  ${subtypes.map(code => code.replace(/\n/g, '\n  ')).join('')}
}`
}

// 3. Generate the swift code for a basic struct corresponding to this object
const toNonDecodableStruct = (object, name) => {
  const subtypes = [];
  const keyToType = {};


  for (const key of Object.keys(object)) {
    if (Array.isArray(object[key])) {
      if (typeof object[key][0] === 'string') {
        keyToType[key] = '[String]';
      } else if (typeof object[key][0] === 'number') {
        keyToType[key] = '[Double]';
      } else {
        const typeName = `Type_${key}`;
        keyToType[key] = `[${typeName}]`;
        subtypes.push(toNonDecodableStruct(object[key][0], typeName))
      }
    } else {
      if (typeof object[key] === 'string') {
        keyToType[key] = 'String';
      } else if (typeof object[key] === 'number') {
        keyToType[key] = 'Double';
      } else {
        const typeName = `Type_${key}`;
        keyToType[key] = typeName;
        subtypes.push(toNonDecodableStruct(object[key], typeName))
      }
    }
  }

  return `
struct ${name} {
  ${Object.keys(keyToType).map(key => `let ${key}: ${keyToType[key]}`).join('\n  ')}

  init(_ dict: [String: Any]) throws {
    ${Object.keys(keyToType).map(key => {
      if (Array.isArray(object[key])) {
        if (typeof object[key][0] === 'string') {
          return `${key} = try parse(dict["${key}"], as: [String].self)`;
        } else if (typeof object[key][0] === 'number') {
          return `${key} = try parse(dict["${key}"], as: [Double].self)`;
        } else {
          return `${key} = try parse(dict["${key}"], as: [[String: Any]].self).map { try ${keyToType[key].replace(/[\[|\]]/g, '')}($0) }` 
        }
      } else {
        if (typeof object[key] === 'string') {
          return `${key} = try parse(dict["${key}"], as: String.self)`
        } else if (typeof object[key] === 'number') {
          return `${key} = try parse(dict["${key}"], as: Double.self)`
        } else {
          return `${key} = try ${keyToType[key]}(try parse(dict["${key}"], as: [String: Any].self))`
        }
      }
    }).join('\n    ')}
  }
  ${subtypes.map(code => code.replace(/\n/g, '\n  ')).join('')}
}`
}

// 3. Generate the swift code for a protobuff based struct corresponding to this object
const toProtobufStruct = (object, name) => {  const subtypes = [];
  const keyToType = {};


  for (const key of Object.keys(object)) {
    if (Array.isArray(object[key])) {
      if (typeof object[key][0] === 'string') {
        keyToType[key] = '[String]';
      } else if (typeof object[key][0] === 'number') {
        keyToType[key] = '[Double]';
      } else {
        const typeName = `Type_${key}`;
        keyToType[key] = `[${typeName}]`;
        subtypes.push(toProtobufStruct(object[key][0], typeName))
      }
    } else {
      if (typeof object[key] === 'string') {
        keyToType[key] = 'String';
      } else if (typeof object[key] === 'number') {
        keyToType[key] = 'Double';
      } else {
        const typeName = `Type_${key}`;
        keyToType[key] = typeName;
        subtypes.push(toProtobufStruct(object[key], typeName))
      }
    }
  }

  return `
struct ${name}: Message, _MessageImplementationBase, _ProtoNameProviding {
  ${Object.keys(keyToType).map(key => `var ${key}: ${keyToType[key]} {
    get { _storage._${key}${keyToType[key].startsWith('Type') ? ` ?? ${keyToType[key]}()` : '' } }
    set { _uniqueStorage()._${key} = newValue }
  }`).join('\n  ')}
  private var _storage = _StorageClass.defaultInstance

  var unknownFields = UnknownStorage()

  init() {}

  // Used to initially read a json
  init(_ dict: [String: Any]) {
    ${Object.keys(keyToType).map(key => {
      if (Array.isArray(object[key])) {
        if (typeof object[key][0] === 'string') {
          return `${key} = dict["${key}"] as! [String]`;
        } else if (typeof object[key][0] === 'number') {
          return `${key} = dict["${key}"] as! [Double]`;
        } else {
          return `${key} = (dict["${key}"] as! [[String: Any]]).map { ${keyToType[key].replace(/[\[|\]]/g, '')}($0) }` 
        }
      } else {
        if (typeof object[key] === 'string') {
          return `${key} = dict["${key}"] as! String`
        } else if (typeof object[key] === 'number') {
          return `${key} = dict["${key}"] as! Double`
        } else {
          return `${key} = ${keyToType[key]}(dict["${key}"] as! [String: Any])`
        }
      }
    }).join('\n    ')}
  }

  static let protoMessageName: String = "${name}"

  static let _protobuf_nameMap: _NameMap = [
    ${Object.keys(keyToType).map((key, i) => `${i+1}: .same(proto: "${key}"),`).join('\n    ')}
  ]

  private class _StorageClass {
    ${Object.keys(keyToType).map(key => {
      if (Array.isArray(object[key])) {
        return `var _${key}: ${keyToType[key]} = []`;
      } else {
        if (typeof object[key] === 'string') {
          return `var _${key}: ${keyToType[key]} = String()`
        } else if (typeof object[key] === 'number') {
          return `var _${key}: ${keyToType[key]} = 0`
        } else {
          return `var _${key}: ${keyToType[key]}? = nil`
        }
      }
    }).join('\n    ')}

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      ${Object.keys(keyToType).map(key => `_${key} = source._${key}`).join('\n      ')}
    }
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
        ${Object.keys(keyToType).map((key, i) => {
          if (Array.isArray(object[key])) {
            if (typeof object[key][0] === 'string') {
              return `case ${i+1}: try decoder.decodeRepeatedStringField(value: &_storage._${key})`;
            } else if (typeof object[key][0] === 'number') {
              return `case ${i+1}: try decoder.decodeRepeatedDoubleField(value: &_storage._${key})`;
            } else {
              return `case ${i+1}: try decoder.decodeRepeatedMessageField(value: &_storage._${key})`;
            }
          } else {
            if (typeof object[key] === 'string') {
              return `case ${i+1}: try decoder.decodeSingularStringField(value: &_storage._${key})`;
            } else if (typeof object[key] === 'number') {
              return `case ${i+1}: try decoder.decodeSingularDoubleField(value: &_storage._${key})`;
            } else {
              return `case ${i+1}: try decoder.decodeSingularMessageField(value: &_storage._${key})`;
            }
          }
        }).join('\n        ')}
      default: break
      }
    }
  }

  func traverse<V: Visitor>(visitor: inout V) throws {
    ${Object.keys(keyToType).map((key, i) => {
      if (Array.isArray(object[key])) {
        if (typeof object[key][0] === 'string') {
          return `if !self.${key}.isEmpty {
      try visitor.visitRepeatedStringField(value: self.${key}, fieldNumber: ${i+1})
    }`;
        } else if (typeof object[key][0] === 'number') {
          return `if !self.${key}.isEmpty {
      try visitor.visitRepeatedDoubleField(value: self.${key}, fieldNumber: ${i+1})
    }`;
        } else {
          return `if !self.${key}.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.${key}, fieldNumber: ${i+1})
    }`;
        }
      } else {
        if (typeof object[key] === 'string') {
          return `try visitor.visitSingularStringField(value: self.${key}, fieldNumber: ${i+1})`;
        } else if (typeof object[key] === 'number') {
          return `try visitor.visitSingularDoubleField(value: self.${key}, fieldNumber: ${i+1})`;
        } else {
          return `if let v = _storage._${key} {
      try visitor.visitSingularMessageField(value: v, fieldNumber: ${i+1})
    }`;
        }
      }
    }).join('\n    ')}
    try unknownFields.traverse(visitor: &visitor)
  }

  ${subtypes.map(code => code.replace(/\n/g, '\n  ')).join('')}
}`
}

// Write the code
fs.writeFileSync(jsonFilePath, JSON.stringify(o));
fs.writeFileSync(basicTypeFilePath, `import Foundation\n\n${toNonDecodableStruct(o, 'BasicType')}`);
fs.writeFileSync(decodableTypeFilePath, `import Foundation\n\n${toDecodableStruct(o, 'DecodableType')}`);
fs.writeFileSync(binaryFilePath, `import Foundation\nimport SwiftProtobuf\n\n${toProtobufStruct(o, 'BinaryType')}`);

console.log(`Generated ${n} properties`);
console.log(`Payload size: ${Buffer.byteLength(JSON.stringify(o), 'utf8').toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")} bytes`);

