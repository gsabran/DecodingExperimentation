import Foundation
import SwiftProtobuf


struct BinaryType: Message, _MessageImplementationBase, _ProtoNameProviding {
  var Wvpzl: [Double] {
    get { _storage._Wvpzl }
    set { _uniqueStorage()._Wvpzl = newValue }
  }
  var zfzHr: [Type_zfzHr] {
    get { _storage._zfzHr }
    set { _uniqueStorage()._zfzHr = newValue }
  }
  var ioKXN: Double {
    get { _storage._ioKXN }
    set { _uniqueStorage()._ioKXN = newValue }
  }
  var DSEpJ: [Type_DSEpJ] {
    get { _storage._DSEpJ }
    set { _uniqueStorage()._DSEpJ = newValue }
  }
  var xInEB: Double {
    get { _storage._xInEB }
    set { _uniqueStorage()._xInEB = newValue }
  }
  var CZqab: Double {
    get { _storage._CZqab }
    set { _uniqueStorage()._CZqab = newValue }
  }
  private var _storage = _StorageClass.defaultInstance

  var unknownFields = UnknownStorage()

  init() {}

  // Used to initially read a json
  init(_ dict: [String: Any]) {
    Wvpzl = dict["Wvpzl"] as! [Double]
    zfzHr = (dict["zfzHr"] as! [[String: Any]]).map { Type_zfzHr($0) }
    ioKXN = dict["ioKXN"] as! Double
    DSEpJ = (dict["DSEpJ"] as! [[String: Any]]).map { Type_DSEpJ($0) }
    xInEB = dict["xInEB"] as! Double
    CZqab = dict["CZqab"] as! Double
  }

  static let protoMessageName: String = "BinaryType"

  static let _protobuf_nameMap: _NameMap = [
    1: .same(proto: "Wvpzl"),
    2: .same(proto: "zfzHr"),
    3: .same(proto: "ioKXN"),
    4: .same(proto: "DSEpJ"),
    5: .same(proto: "xInEB"),
    6: .same(proto: "CZqab"),
  ]

  private class _StorageClass {
    var _Wvpzl: [Double] = []
    var _zfzHr: [Type_zfzHr] = []
    var _ioKXN: Double = 0
    var _DSEpJ: [Type_DSEpJ] = []
    var _xInEB: Double = 0
    var _CZqab: Double = 0

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _Wvpzl = source._Wvpzl
      _zfzHr = source._zfzHr
      _ioKXN = source._ioKXN
      _DSEpJ = source._DSEpJ
      _xInEB = source._xInEB
      _CZqab = source._CZqab
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
        case 1: try decoder.decodeRepeatedDoubleField(value: &_storage._Wvpzl)
        case 2: try decoder.decodeRepeatedMessageField(value: &_storage._zfzHr)
        case 3: try decoder.decodeSingularDoubleField(value: &_storage._ioKXN)
        case 4: try decoder.decodeRepeatedMessageField(value: &_storage._DSEpJ)
        case 5: try decoder.decodeSingularDoubleField(value: &_storage._xInEB)
        case 6: try decoder.decodeSingularDoubleField(value: &_storage._CZqab)
      default: break
      }
    }
  }

  func traverse<V: Visitor>(visitor: inout V) throws {
    if !self.Wvpzl.isEmpty {
      try visitor.visitRepeatedDoubleField(value: self.Wvpzl, fieldNumber: 1)
    }
    if !self.zfzHr.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.zfzHr, fieldNumber: 2)
    }
    try visitor.visitSingularDoubleField(value: self.ioKXN, fieldNumber: 3)
    if !self.DSEpJ.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.DSEpJ, fieldNumber: 4)
    }
    try visitor.visitSingularDoubleField(value: self.xInEB, fieldNumber: 5)
    try visitor.visitSingularDoubleField(value: self.CZqab, fieldNumber: 6)
    try unknownFields.traverse(visitor: &visitor)
  }

  
  struct Type_zfzHr: Message, _MessageImplementationBase, _ProtoNameProviding {
    var XcKdj: Type_XcKdj {
      get { _storage._XcKdj ?? Type_XcKdj() }
      set { _uniqueStorage()._XcKdj = newValue }
    }
    var xsPRX: Double {
      get { _storage._xsPRX }
      set { _uniqueStorage()._xsPRX = newValue }
    }
    var rzPys: String {
      get { _storage._rzPys }
      set { _uniqueStorage()._rzPys = newValue }
    }
    var WgRgF: Double {
      get { _storage._WgRgF }
      set { _uniqueStorage()._WgRgF = newValue }
    }
    var Dkxhe: String {
      get { _storage._Dkxhe }
      set { _uniqueStorage()._Dkxhe = newValue }
    }
    var gGysX: [Type_gGysX] {
      get { _storage._gGysX }
      set { _uniqueStorage()._gGysX = newValue }
    }
    private var _storage = _StorageClass.defaultInstance
  
    var unknownFields = UnknownStorage()
  
    init() {}
  
    // Used to initially read a json
    init(_ dict: [String: Any]) {
      XcKdj = Type_XcKdj(dict["XcKdj"] as! [String: Any])
      xsPRX = dict["xsPRX"] as! Double
      rzPys = dict["rzPys"] as! String
      WgRgF = dict["WgRgF"] as! Double
      Dkxhe = dict["Dkxhe"] as! String
      gGysX = (dict["gGysX"] as! [[String: Any]]).map { Type_gGysX($0) }
    }
  
    static let protoMessageName: String = "Type_zfzHr"
  
    static let _protobuf_nameMap: _NameMap = [
      1: .same(proto: "XcKdj"),
      2: .same(proto: "xsPRX"),
      3: .same(proto: "rzPys"),
      4: .same(proto: "WgRgF"),
      5: .same(proto: "Dkxhe"),
      6: .same(proto: "gGysX"),
    ]
  
    private class _StorageClass {
      var _XcKdj: Type_XcKdj? = nil
      var _xsPRX: Double = 0
      var _rzPys: String = String()
      var _WgRgF: Double = 0
      var _Dkxhe: String = String()
      var _gGysX: [Type_gGysX] = []
  
      static let defaultInstance = _StorageClass()
  
      private init() {}
  
      init(copying source: _StorageClass) {
        _XcKdj = source._XcKdj
        _xsPRX = source._xsPRX
        _rzPys = source._rzPys
        _WgRgF = source._WgRgF
        _Dkxhe = source._Dkxhe
        _gGysX = source._gGysX
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
          case 1: try decoder.decodeSingularMessageField(value: &_storage._XcKdj)
          case 2: try decoder.decodeSingularDoubleField(value: &_storage._xsPRX)
          case 3: try decoder.decodeSingularStringField(value: &_storage._rzPys)
          case 4: try decoder.decodeSingularDoubleField(value: &_storage._WgRgF)
          case 5: try decoder.decodeSingularStringField(value: &_storage._Dkxhe)
          case 6: try decoder.decodeRepeatedMessageField(value: &_storage._gGysX)
        default: break
        }
      }
    }
  
    func traverse<V: Visitor>(visitor: inout V) throws {
      if let v = _storage._XcKdj {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      try visitor.visitSingularDoubleField(value: self.xsPRX, fieldNumber: 2)
      try visitor.visitSingularStringField(value: self.rzPys, fieldNumber: 3)
      try visitor.visitSingularDoubleField(value: self.WgRgF, fieldNumber: 4)
      try visitor.visitSingularStringField(value: self.Dkxhe, fieldNumber: 5)
      if !self.gGysX.isEmpty {
        try visitor.visitRepeatedMessageField(value: self.gGysX, fieldNumber: 6)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  
    
    struct Type_XcKdj: Message, _MessageImplementationBase, _ProtoNameProviding {
      var KJsWE: String {
        get { _storage._KJsWE }
        set { _uniqueStorage()._KJsWE = newValue }
      }
      var pOkpi: Type_pOkpi {
        get { _storage._pOkpi ?? Type_pOkpi() }
        set { _uniqueStorage()._pOkpi = newValue }
      }
      var PwPNL: [String] {
        get { _storage._PwPNL }
        set { _uniqueStorage()._PwPNL = newValue }
      }
      var WGSHU: [Type_WGSHU] {
        get { _storage._WGSHU }
        set { _uniqueStorage()._WGSHU = newValue }
      }
      var NzKwB: String {
        get { _storage._NzKwB }
        set { _uniqueStorage()._NzKwB = newValue }
      }
      var CmhHE: Double {
        get { _storage._CmhHE }
        set { _uniqueStorage()._CmhHE = newValue }
      }
      private var _storage = _StorageClass.defaultInstance
    
      var unknownFields = UnknownStorage()
    
      init() {}
    
      // Used to initially read a json
      init(_ dict: [String: Any]) {
        KJsWE = dict["KJsWE"] as! String
        pOkpi = Type_pOkpi(dict["pOkpi"] as! [String: Any])
        PwPNL = dict["PwPNL"] as! [String]
        WGSHU = (dict["WGSHU"] as! [[String: Any]]).map { Type_WGSHU($0) }
        NzKwB = dict["NzKwB"] as! String
        CmhHE = dict["CmhHE"] as! Double
      }
    
      static let protoMessageName: String = "Type_XcKdj"
    
      static let _protobuf_nameMap: _NameMap = [
        1: .same(proto: "KJsWE"),
        2: .same(proto: "pOkpi"),
        3: .same(proto: "PwPNL"),
        4: .same(proto: "WGSHU"),
        5: .same(proto: "NzKwB"),
        6: .same(proto: "CmhHE"),
      ]
    
      private class _StorageClass {
        var _KJsWE: String = String()
        var _pOkpi: Type_pOkpi? = nil
        var _PwPNL: [String] = []
        var _WGSHU: [Type_WGSHU] = []
        var _NzKwB: String = String()
        var _CmhHE: Double = 0
    
        static let defaultInstance = _StorageClass()
    
        private init() {}
    
        init(copying source: _StorageClass) {
          _KJsWE = source._KJsWE
          _pOkpi = source._pOkpi
          _PwPNL = source._PwPNL
          _WGSHU = source._WGSHU
          _NzKwB = source._NzKwB
          _CmhHE = source._CmhHE
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
            case 1: try decoder.decodeSingularStringField(value: &_storage._KJsWE)
            case 2: try decoder.decodeSingularMessageField(value: &_storage._pOkpi)
            case 3: try decoder.decodeRepeatedStringField(value: &_storage._PwPNL)
            case 4: try decoder.decodeRepeatedMessageField(value: &_storage._WGSHU)
            case 5: try decoder.decodeSingularStringField(value: &_storage._NzKwB)
            case 6: try decoder.decodeSingularDoubleField(value: &_storage._CmhHE)
          default: break
          }
        }
      }
    
      func traverse<V: Visitor>(visitor: inout V) throws {
        try visitor.visitSingularStringField(value: self.KJsWE, fieldNumber: 1)
        if let v = _storage._pOkpi {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
        }
        if !self.PwPNL.isEmpty {
          try visitor.visitRepeatedStringField(value: self.PwPNL, fieldNumber: 3)
        }
        if !self.WGSHU.isEmpty {
          try visitor.visitRepeatedMessageField(value: self.WGSHU, fieldNumber: 4)
        }
        try visitor.visitSingularStringField(value: self.NzKwB, fieldNumber: 5)
        try visitor.visitSingularDoubleField(value: self.CmhHE, fieldNumber: 6)
        try unknownFields.traverse(visitor: &visitor)
      }
    
      
      struct Type_pOkpi: Message, _MessageImplementationBase, _ProtoNameProviding {
        var MZWjW: String {
          get { _storage._MZWjW }
          set { _uniqueStorage()._MZWjW = newValue }
        }
        var zQmbL: [Double] {
          get { _storage._zQmbL }
          set { _uniqueStorage()._zQmbL = newValue }
        }
        var sLCad: [Type_sLCad] {
          get { _storage._sLCad }
          set { _uniqueStorage()._sLCad = newValue }
        }
        var LYSSY: Double {
          get { _storage._LYSSY }
          set { _uniqueStorage()._LYSSY = newValue }
        }
        var CDjUB: String {
          get { _storage._CDjUB }
          set { _uniqueStorage()._CDjUB = newValue }
        }
        var dcqLa: Type_dcqLa {
          get { _storage._dcqLa ?? Type_dcqLa() }
          set { _uniqueStorage()._dcqLa = newValue }
        }
        private var _storage = _StorageClass.defaultInstance
      
        var unknownFields = UnknownStorage()
      
        init() {}
      
        // Used to initially read a json
        init(_ dict: [String: Any]) {
          MZWjW = dict["MZWjW"] as! String
          zQmbL = dict["zQmbL"] as! [Double]
          sLCad = (dict["sLCad"] as! [[String: Any]]).map { Type_sLCad($0) }
          LYSSY = dict["LYSSY"] as! Double
          CDjUB = dict["CDjUB"] as! String
          dcqLa = Type_dcqLa(dict["dcqLa"] as! [String: Any])
        }
      
        static let protoMessageName: String = "Type_pOkpi"
      
        static let _protobuf_nameMap: _NameMap = [
          1: .same(proto: "MZWjW"),
          2: .same(proto: "zQmbL"),
          3: .same(proto: "sLCad"),
          4: .same(proto: "LYSSY"),
          5: .same(proto: "CDjUB"),
          6: .same(proto: "dcqLa"),
        ]
      
        private class _StorageClass {
          var _MZWjW: String = String()
          var _zQmbL: [Double] = []
          var _sLCad: [Type_sLCad] = []
          var _LYSSY: Double = 0
          var _CDjUB: String = String()
          var _dcqLa: Type_dcqLa? = nil
      
          static let defaultInstance = _StorageClass()
      
          private init() {}
      
          init(copying source: _StorageClass) {
            _MZWjW = source._MZWjW
            _zQmbL = source._zQmbL
            _sLCad = source._sLCad
            _LYSSY = source._LYSSY
            _CDjUB = source._CDjUB
            _dcqLa = source._dcqLa
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
              case 1: try decoder.decodeSingularStringField(value: &_storage._MZWjW)
              case 2: try decoder.decodeRepeatedDoubleField(value: &_storage._zQmbL)
              case 3: try decoder.decodeRepeatedMessageField(value: &_storage._sLCad)
              case 4: try decoder.decodeSingularDoubleField(value: &_storage._LYSSY)
              case 5: try decoder.decodeSingularStringField(value: &_storage._CDjUB)
              case 6: try decoder.decodeSingularMessageField(value: &_storage._dcqLa)
            default: break
            }
          }
        }
      
        func traverse<V: Visitor>(visitor: inout V) throws {
          try visitor.visitSingularStringField(value: self.MZWjW, fieldNumber: 1)
          if !self.zQmbL.isEmpty {
            try visitor.visitRepeatedDoubleField(value: self.zQmbL, fieldNumber: 2)
          }
          if !self.sLCad.isEmpty {
            try visitor.visitRepeatedMessageField(value: self.sLCad, fieldNumber: 3)
          }
          try visitor.visitSingularDoubleField(value: self.LYSSY, fieldNumber: 4)
          try visitor.visitSingularStringField(value: self.CDjUB, fieldNumber: 5)
          if let v = _storage._dcqLa {
            try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
          }
          try unknownFields.traverse(visitor: &visitor)
        }
      
        
        struct Type_sLCad: Message, _MessageImplementationBase, _ProtoNameProviding {
          var hsLQP: Double {
            get { _storage._hsLQP }
            set { _uniqueStorage()._hsLQP = newValue }
          }
          var ZCoWf: String {
            get { _storage._ZCoWf }
            set { _uniqueStorage()._ZCoWf = newValue }
          }
          var ygLRG: Double {
            get { _storage._ygLRG }
            set { _uniqueStorage()._ygLRG = newValue }
          }
          var rxcgm: String {
            get { _storage._rxcgm }
            set { _uniqueStorage()._rxcgm = newValue }
          }
          var foSfA: Double {
            get { _storage._foSfA }
            set { _uniqueStorage()._foSfA = newValue }
          }
          var WCSbf: [Double] {
            get { _storage._WCSbf }
            set { _uniqueStorage()._WCSbf = newValue }
          }
          private var _storage = _StorageClass.defaultInstance
        
          var unknownFields = UnknownStorage()
        
          init() {}
        
          // Used to initially read a json
          init(_ dict: [String: Any]) {
            hsLQP = dict["hsLQP"] as! Double
            ZCoWf = dict["ZCoWf"] as! String
            ygLRG = dict["ygLRG"] as! Double
            rxcgm = dict["rxcgm"] as! String
            foSfA = dict["foSfA"] as! Double
            WCSbf = dict["WCSbf"] as! [Double]
          }
        
          static let protoMessageName: String = "Type_sLCad"
        
          static let _protobuf_nameMap: _NameMap = [
            1: .same(proto: "hsLQP"),
            2: .same(proto: "ZCoWf"),
            3: .same(proto: "ygLRG"),
            4: .same(proto: "rxcgm"),
            5: .same(proto: "foSfA"),
            6: .same(proto: "WCSbf"),
          ]
        
          private class _StorageClass {
            var _hsLQP: Double = 0
            var _ZCoWf: String = String()
            var _ygLRG: Double = 0
            var _rxcgm: String = String()
            var _foSfA: Double = 0
            var _WCSbf: [Double] = []
        
            static let defaultInstance = _StorageClass()
        
            private init() {}
        
            init(copying source: _StorageClass) {
              _hsLQP = source._hsLQP
              _ZCoWf = source._ZCoWf
              _ygLRG = source._ygLRG
              _rxcgm = source._rxcgm
              _foSfA = source._foSfA
              _WCSbf = source._WCSbf
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
                case 1: try decoder.decodeSingularDoubleField(value: &_storage._hsLQP)
                case 2: try decoder.decodeSingularStringField(value: &_storage._ZCoWf)
                case 3: try decoder.decodeSingularDoubleField(value: &_storage._ygLRG)
                case 4: try decoder.decodeSingularStringField(value: &_storage._rxcgm)
                case 5: try decoder.decodeSingularDoubleField(value: &_storage._foSfA)
                case 6: try decoder.decodeRepeatedDoubleField(value: &_storage._WCSbf)
              default: break
              }
            }
          }
        
          func traverse<V: Visitor>(visitor: inout V) throws {
            try visitor.visitSingularDoubleField(value: self.hsLQP, fieldNumber: 1)
            try visitor.visitSingularStringField(value: self.ZCoWf, fieldNumber: 2)
            try visitor.visitSingularDoubleField(value: self.ygLRG, fieldNumber: 3)
            try visitor.visitSingularStringField(value: self.rxcgm, fieldNumber: 4)
            try visitor.visitSingularDoubleField(value: self.foSfA, fieldNumber: 5)
            if !self.WCSbf.isEmpty {
              try visitor.visitRepeatedDoubleField(value: self.WCSbf, fieldNumber: 6)
            }
            try unknownFields.traverse(visitor: &visitor)
          }
        
          
        }
        struct Type_dcqLa: Message, _MessageImplementationBase, _ProtoNameProviding {
          var diugR: [String] {
            get { _storage._diugR }
            set { _uniqueStorage()._diugR = newValue }
          }
          var eknPb: Double {
            get { _storage._eknPb }
            set { _uniqueStorage()._eknPb = newValue }
          }
          var bzsFd: String {
            get { _storage._bzsFd }
            set { _uniqueStorage()._bzsFd = newValue }
          }
          var UyPhj: String {
            get { _storage._UyPhj }
            set { _uniqueStorage()._UyPhj = newValue }
          }
          var lMurI: String {
            get { _storage._lMurI }
            set { _uniqueStorage()._lMurI = newValue }
          }
          var YgjgW: Double {
            get { _storage._YgjgW }
            set { _uniqueStorage()._YgjgW = newValue }
          }
          private var _storage = _StorageClass.defaultInstance
        
          var unknownFields = UnknownStorage()
        
          init() {}
        
          // Used to initially read a json
          init(_ dict: [String: Any]) {
            diugR = dict["diugR"] as! [String]
            eknPb = dict["eknPb"] as! Double
            bzsFd = dict["bzsFd"] as! String
            UyPhj = dict["UyPhj"] as! String
            lMurI = dict["lMurI"] as! String
            YgjgW = dict["YgjgW"] as! Double
          }
        
          static let protoMessageName: String = "Type_dcqLa"
        
          static let _protobuf_nameMap: _NameMap = [
            1: .same(proto: "diugR"),
            2: .same(proto: "eknPb"),
            3: .same(proto: "bzsFd"),
            4: .same(proto: "UyPhj"),
            5: .same(proto: "lMurI"),
            6: .same(proto: "YgjgW"),
          ]
        
          private class _StorageClass {
            var _diugR: [String] = []
            var _eknPb: Double = 0
            var _bzsFd: String = String()
            var _UyPhj: String = String()
            var _lMurI: String = String()
            var _YgjgW: Double = 0
        
            static let defaultInstance = _StorageClass()
        
            private init() {}
        
            init(copying source: _StorageClass) {
              _diugR = source._diugR
              _eknPb = source._eknPb
              _bzsFd = source._bzsFd
              _UyPhj = source._UyPhj
              _lMurI = source._lMurI
              _YgjgW = source._YgjgW
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
                case 1: try decoder.decodeRepeatedStringField(value: &_storage._diugR)
                case 2: try decoder.decodeSingularDoubleField(value: &_storage._eknPb)
                case 3: try decoder.decodeSingularStringField(value: &_storage._bzsFd)
                case 4: try decoder.decodeSingularStringField(value: &_storage._UyPhj)
                case 5: try decoder.decodeSingularStringField(value: &_storage._lMurI)
                case 6: try decoder.decodeSingularDoubleField(value: &_storage._YgjgW)
              default: break
              }
            }
          }
        
          func traverse<V: Visitor>(visitor: inout V) throws {
            if !self.diugR.isEmpty {
              try visitor.visitRepeatedStringField(value: self.diugR, fieldNumber: 1)
            }
            try visitor.visitSingularDoubleField(value: self.eknPb, fieldNumber: 2)
            try visitor.visitSingularStringField(value: self.bzsFd, fieldNumber: 3)
            try visitor.visitSingularStringField(value: self.UyPhj, fieldNumber: 4)
            try visitor.visitSingularStringField(value: self.lMurI, fieldNumber: 5)
            try visitor.visitSingularDoubleField(value: self.YgjgW, fieldNumber: 6)
            try unknownFields.traverse(visitor: &visitor)
          }
        
          
        }
      }
      struct Type_WGSHU: Message, _MessageImplementationBase, _ProtoNameProviding {
        var GSrmx: Double {
          get { _storage._GSrmx }
          set { _uniqueStorage()._GSrmx = newValue }
        }
        var FYSLL: [Double] {
          get { _storage._FYSLL }
          set { _uniqueStorage()._FYSLL = newValue }
        }
        var ReCyW: Double {
          get { _storage._ReCyW }
          set { _uniqueStorage()._ReCyW = newValue }
        }
        var fMkPa: String {
          get { _storage._fMkPa }
          set { _uniqueStorage()._fMkPa = newValue }
        }
        var PRxMS: Double {
          get { _storage._PRxMS }
          set { _uniqueStorage()._PRxMS = newValue }
        }
        var rWqDd: String {
          get { _storage._rWqDd }
          set { _uniqueStorage()._rWqDd = newValue }
        }
        private var _storage = _StorageClass.defaultInstance
      
        var unknownFields = UnknownStorage()
      
        init() {}
      
        // Used to initially read a json
        init(_ dict: [String: Any]) {
          GSrmx = dict["GSrmx"] as! Double
          FYSLL = dict["FYSLL"] as! [Double]
          ReCyW = dict["ReCyW"] as! Double
          fMkPa = dict["fMkPa"] as! String
          PRxMS = dict["PRxMS"] as! Double
          rWqDd = dict["rWqDd"] as! String
        }
      
        static let protoMessageName: String = "Type_WGSHU"
      
        static let _protobuf_nameMap: _NameMap = [
          1: .same(proto: "GSrmx"),
          2: .same(proto: "FYSLL"),
          3: .same(proto: "ReCyW"),
          4: .same(proto: "fMkPa"),
          5: .same(proto: "PRxMS"),
          6: .same(proto: "rWqDd"),
        ]
      
        private class _StorageClass {
          var _GSrmx: Double = 0
          var _FYSLL: [Double] = []
          var _ReCyW: Double = 0
          var _fMkPa: String = String()
          var _PRxMS: Double = 0
          var _rWqDd: String = String()
      
          static let defaultInstance = _StorageClass()
      
          private init() {}
      
          init(copying source: _StorageClass) {
            _GSrmx = source._GSrmx
            _FYSLL = source._FYSLL
            _ReCyW = source._ReCyW
            _fMkPa = source._fMkPa
            _PRxMS = source._PRxMS
            _rWqDd = source._rWqDd
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
              case 1: try decoder.decodeSingularDoubleField(value: &_storage._GSrmx)
              case 2: try decoder.decodeRepeatedDoubleField(value: &_storage._FYSLL)
              case 3: try decoder.decodeSingularDoubleField(value: &_storage._ReCyW)
              case 4: try decoder.decodeSingularStringField(value: &_storage._fMkPa)
              case 5: try decoder.decodeSingularDoubleField(value: &_storage._PRxMS)
              case 6: try decoder.decodeSingularStringField(value: &_storage._rWqDd)
            default: break
            }
          }
        }
      
        func traverse<V: Visitor>(visitor: inout V) throws {
          try visitor.visitSingularDoubleField(value: self.GSrmx, fieldNumber: 1)
          if !self.FYSLL.isEmpty {
            try visitor.visitRepeatedDoubleField(value: self.FYSLL, fieldNumber: 2)
          }
          try visitor.visitSingularDoubleField(value: self.ReCyW, fieldNumber: 3)
          try visitor.visitSingularStringField(value: self.fMkPa, fieldNumber: 4)
          try visitor.visitSingularDoubleField(value: self.PRxMS, fieldNumber: 5)
          try visitor.visitSingularStringField(value: self.rWqDd, fieldNumber: 6)
          try unknownFields.traverse(visitor: &visitor)
        }
      
        
      }
    }
    struct Type_gGysX: Message, _MessageImplementationBase, _ProtoNameProviding {
      var qRNJl: Double {
        get { _storage._qRNJl }
        set { _uniqueStorage()._qRNJl = newValue }
      }
      var TBOCv: String {
        get { _storage._TBOCv }
        set { _uniqueStorage()._TBOCv = newValue }
      }
      var QKlKa: Double {
        get { _storage._QKlKa }
        set { _uniqueStorage()._QKlKa = newValue }
      }
      var mAASx: Double {
        get { _storage._mAASx }
        set { _uniqueStorage()._mAASx = newValue }
      }
      var BhsKO: String {
        get { _storage._BhsKO }
        set { _uniqueStorage()._BhsKO = newValue }
      }
      var pMDdr: Type_pMDdr {
        get { _storage._pMDdr ?? Type_pMDdr() }
        set { _uniqueStorage()._pMDdr = newValue }
      }
      private var _storage = _StorageClass.defaultInstance
    
      var unknownFields = UnknownStorage()
    
      init() {}
    
      // Used to initially read a json
      init(_ dict: [String: Any]) {
        qRNJl = dict["qRNJl"] as! Double
        TBOCv = dict["TBOCv"] as! String
        QKlKa = dict["QKlKa"] as! Double
        mAASx = dict["mAASx"] as! Double
        BhsKO = dict["BhsKO"] as! String
        pMDdr = Type_pMDdr(dict["pMDdr"] as! [String: Any])
      }
    
      static let protoMessageName: String = "Type_gGysX"
    
      static let _protobuf_nameMap: _NameMap = [
        1: .same(proto: "qRNJl"),
        2: .same(proto: "TBOCv"),
        3: .same(proto: "QKlKa"),
        4: .same(proto: "mAASx"),
        5: .same(proto: "BhsKO"),
        6: .same(proto: "pMDdr"),
      ]
    
      private class _StorageClass {
        var _qRNJl: Double = 0
        var _TBOCv: String = String()
        var _QKlKa: Double = 0
        var _mAASx: Double = 0
        var _BhsKO: String = String()
        var _pMDdr: Type_pMDdr? = nil
    
        static let defaultInstance = _StorageClass()
    
        private init() {}
    
        init(copying source: _StorageClass) {
          _qRNJl = source._qRNJl
          _TBOCv = source._TBOCv
          _QKlKa = source._QKlKa
          _mAASx = source._mAASx
          _BhsKO = source._BhsKO
          _pMDdr = source._pMDdr
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
            case 1: try decoder.decodeSingularDoubleField(value: &_storage._qRNJl)
            case 2: try decoder.decodeSingularStringField(value: &_storage._TBOCv)
            case 3: try decoder.decodeSingularDoubleField(value: &_storage._QKlKa)
            case 4: try decoder.decodeSingularDoubleField(value: &_storage._mAASx)
            case 5: try decoder.decodeSingularStringField(value: &_storage._BhsKO)
            case 6: try decoder.decodeSingularMessageField(value: &_storage._pMDdr)
          default: break
          }
        }
      }
    
      func traverse<V: Visitor>(visitor: inout V) throws {
        try visitor.visitSingularDoubleField(value: self.qRNJl, fieldNumber: 1)
        try visitor.visitSingularStringField(value: self.TBOCv, fieldNumber: 2)
        try visitor.visitSingularDoubleField(value: self.QKlKa, fieldNumber: 3)
        try visitor.visitSingularDoubleField(value: self.mAASx, fieldNumber: 4)
        try visitor.visitSingularStringField(value: self.BhsKO, fieldNumber: 5)
        if let v = _storage._pMDdr {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
        }
        try unknownFields.traverse(visitor: &visitor)
      }
    
      
      struct Type_pMDdr: Message, _MessageImplementationBase, _ProtoNameProviding {
        var ndvAN: Double {
          get { _storage._ndvAN }
          set { _uniqueStorage()._ndvAN = newValue }
        }
        var qalwq: String {
          get { _storage._qalwq }
          set { _uniqueStorage()._qalwq = newValue }
        }
        var uFLDC: Double {
          get { _storage._uFLDC }
          set { _uniqueStorage()._uFLDC = newValue }
        }
        var HQAuo: Double {
          get { _storage._HQAuo }
          set { _uniqueStorage()._HQAuo = newValue }
        }
        var bQZug: Double {
          get { _storage._bQZug }
          set { _uniqueStorage()._bQZug = newValue }
        }
        var Fnfik: [String] {
          get { _storage._Fnfik }
          set { _uniqueStorage()._Fnfik = newValue }
        }
        private var _storage = _StorageClass.defaultInstance
      
        var unknownFields = UnknownStorage()
      
        init() {}
      
        // Used to initially read a json
        init(_ dict: [String: Any]) {
          ndvAN = dict["ndvAN"] as! Double
          qalwq = dict["qalwq"] as! String
          uFLDC = dict["uFLDC"] as! Double
          HQAuo = dict["HQAuo"] as! Double
          bQZug = dict["bQZug"] as! Double
          Fnfik = dict["Fnfik"] as! [String]
        }
      
        static let protoMessageName: String = "Type_pMDdr"
      
        static let _protobuf_nameMap: _NameMap = [
          1: .same(proto: "ndvAN"),
          2: .same(proto: "qalwq"),
          3: .same(proto: "uFLDC"),
          4: .same(proto: "HQAuo"),
          5: .same(proto: "bQZug"),
          6: .same(proto: "Fnfik"),
        ]
      
        private class _StorageClass {
          var _ndvAN: Double = 0
          var _qalwq: String = String()
          var _uFLDC: Double = 0
          var _HQAuo: Double = 0
          var _bQZug: Double = 0
          var _Fnfik: [String] = []
      
          static let defaultInstance = _StorageClass()
      
          private init() {}
      
          init(copying source: _StorageClass) {
            _ndvAN = source._ndvAN
            _qalwq = source._qalwq
            _uFLDC = source._uFLDC
            _HQAuo = source._HQAuo
            _bQZug = source._bQZug
            _Fnfik = source._Fnfik
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
              case 1: try decoder.decodeSingularDoubleField(value: &_storage._ndvAN)
              case 2: try decoder.decodeSingularStringField(value: &_storage._qalwq)
              case 3: try decoder.decodeSingularDoubleField(value: &_storage._uFLDC)
              case 4: try decoder.decodeSingularDoubleField(value: &_storage._HQAuo)
              case 5: try decoder.decodeSingularDoubleField(value: &_storage._bQZug)
              case 6: try decoder.decodeRepeatedStringField(value: &_storage._Fnfik)
            default: break
            }
          }
        }
      
        func traverse<V: Visitor>(visitor: inout V) throws {
          try visitor.visitSingularDoubleField(value: self.ndvAN, fieldNumber: 1)
          try visitor.visitSingularStringField(value: self.qalwq, fieldNumber: 2)
          try visitor.visitSingularDoubleField(value: self.uFLDC, fieldNumber: 3)
          try visitor.visitSingularDoubleField(value: self.HQAuo, fieldNumber: 4)
          try visitor.visitSingularDoubleField(value: self.bQZug, fieldNumber: 5)
          if !self.Fnfik.isEmpty {
            try visitor.visitRepeatedStringField(value: self.Fnfik, fieldNumber: 6)
          }
          try unknownFields.traverse(visitor: &visitor)
        }
      
        
      }
    }
  }
  struct Type_DSEpJ: Message, _MessageImplementationBase, _ProtoNameProviding {
    var BSBOd: Double {
      get { _storage._BSBOd }
      set { _uniqueStorage()._BSBOd = newValue }
    }
    var SIjlu: Double {
      get { _storage._SIjlu }
      set { _uniqueStorage()._SIjlu = newValue }
    }
    var KYGaR: Double {
      get { _storage._KYGaR }
      set { _uniqueStorage()._KYGaR = newValue }
    }
    var qmrIE: Type_qmrIE {
      get { _storage._qmrIE ?? Type_qmrIE() }
      set { _uniqueStorage()._qmrIE = newValue }
    }
    var XHeqk: Type_XHeqk {
      get { _storage._XHeqk ?? Type_XHeqk() }
      set { _uniqueStorage()._XHeqk = newValue }
    }
    var aiwjr: String {
      get { _storage._aiwjr }
      set { _uniqueStorage()._aiwjr = newValue }
    }
    private var _storage = _StorageClass.defaultInstance
  
    var unknownFields = UnknownStorage()
  
    init() {}
  
    // Used to initially read a json
    init(_ dict: [String: Any]) {
      BSBOd = dict["BSBOd"] as! Double
      SIjlu = dict["SIjlu"] as! Double
      KYGaR = dict["KYGaR"] as! Double
      qmrIE = Type_qmrIE(dict["qmrIE"] as! [String: Any])
      XHeqk = Type_XHeqk(dict["XHeqk"] as! [String: Any])
      aiwjr = dict["aiwjr"] as! String
    }
  
    static let protoMessageName: String = "Type_DSEpJ"
  
    static let _protobuf_nameMap: _NameMap = [
      1: .same(proto: "BSBOd"),
      2: .same(proto: "SIjlu"),
      3: .same(proto: "KYGaR"),
      4: .same(proto: "qmrIE"),
      5: .same(proto: "XHeqk"),
      6: .same(proto: "aiwjr"),
    ]
  
    private class _StorageClass {
      var _BSBOd: Double = 0
      var _SIjlu: Double = 0
      var _KYGaR: Double = 0
      var _qmrIE: Type_qmrIE? = nil
      var _XHeqk: Type_XHeqk? = nil
      var _aiwjr: String = String()
  
      static let defaultInstance = _StorageClass()
  
      private init() {}
  
      init(copying source: _StorageClass) {
        _BSBOd = source._BSBOd
        _SIjlu = source._SIjlu
        _KYGaR = source._KYGaR
        _qmrIE = source._qmrIE
        _XHeqk = source._XHeqk
        _aiwjr = source._aiwjr
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
          case 1: try decoder.decodeSingularDoubleField(value: &_storage._BSBOd)
          case 2: try decoder.decodeSingularDoubleField(value: &_storage._SIjlu)
          case 3: try decoder.decodeSingularDoubleField(value: &_storage._KYGaR)
          case 4: try decoder.decodeSingularMessageField(value: &_storage._qmrIE)
          case 5: try decoder.decodeSingularMessageField(value: &_storage._XHeqk)
          case 6: try decoder.decodeSingularStringField(value: &_storage._aiwjr)
        default: break
        }
      }
    }
  
    func traverse<V: Visitor>(visitor: inout V) throws {
      try visitor.visitSingularDoubleField(value: self.BSBOd, fieldNumber: 1)
      try visitor.visitSingularDoubleField(value: self.SIjlu, fieldNumber: 2)
      try visitor.visitSingularDoubleField(value: self.KYGaR, fieldNumber: 3)
      if let v = _storage._qmrIE {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
      if let v = _storage._XHeqk {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
      try visitor.visitSingularStringField(value: self.aiwjr, fieldNumber: 6)
      try unknownFields.traverse(visitor: &visitor)
    }
  
    
    struct Type_qmrIE: Message, _MessageImplementationBase, _ProtoNameProviding {
      var COskH: Double {
        get { _storage._COskH }
        set { _uniqueStorage()._COskH = newValue }
      }
      var WjsgJ: Double {
        get { _storage._WjsgJ }
        set { _uniqueStorage()._WjsgJ = newValue }
      }
      var otpqz: Type_otpqz {
        get { _storage._otpqz ?? Type_otpqz() }
        set { _uniqueStorage()._otpqz = newValue }
      }
      var eDLqm: Double {
        get { _storage._eDLqm }
        set { _uniqueStorage()._eDLqm = newValue }
      }
      var yyzvM: String {
        get { _storage._yyzvM }
        set { _uniqueStorage()._yyzvM = newValue }
      }
      var JdhlH: String {
        get { _storage._JdhlH }
        set { _uniqueStorage()._JdhlH = newValue }
      }
      private var _storage = _StorageClass.defaultInstance
    
      var unknownFields = UnknownStorage()
    
      init() {}
    
      // Used to initially read a json
      init(_ dict: [String: Any]) {
        COskH = dict["COskH"] as! Double
        WjsgJ = dict["WjsgJ"] as! Double
        otpqz = Type_otpqz(dict["otpqz"] as! [String: Any])
        eDLqm = dict["eDLqm"] as! Double
        yyzvM = dict["yyzvM"] as! String
        JdhlH = dict["JdhlH"] as! String
      }
    
      static let protoMessageName: String = "Type_qmrIE"
    
      static let _protobuf_nameMap: _NameMap = [
        1: .same(proto: "COskH"),
        2: .same(proto: "WjsgJ"),
        3: .same(proto: "otpqz"),
        4: .same(proto: "eDLqm"),
        5: .same(proto: "yyzvM"),
        6: .same(proto: "JdhlH"),
      ]
    
      private class _StorageClass {
        var _COskH: Double = 0
        var _WjsgJ: Double = 0
        var _otpqz: Type_otpqz? = nil
        var _eDLqm: Double = 0
        var _yyzvM: String = String()
        var _JdhlH: String = String()
    
        static let defaultInstance = _StorageClass()
    
        private init() {}
    
        init(copying source: _StorageClass) {
          _COskH = source._COskH
          _WjsgJ = source._WjsgJ
          _otpqz = source._otpqz
          _eDLqm = source._eDLqm
          _yyzvM = source._yyzvM
          _JdhlH = source._JdhlH
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
            case 1: try decoder.decodeSingularDoubleField(value: &_storage._COskH)
            case 2: try decoder.decodeSingularDoubleField(value: &_storage._WjsgJ)
            case 3: try decoder.decodeSingularMessageField(value: &_storage._otpqz)
            case 4: try decoder.decodeSingularDoubleField(value: &_storage._eDLqm)
            case 5: try decoder.decodeSingularStringField(value: &_storage._yyzvM)
            case 6: try decoder.decodeSingularStringField(value: &_storage._JdhlH)
          default: break
          }
        }
      }
    
      func traverse<V: Visitor>(visitor: inout V) throws {
        try visitor.visitSingularDoubleField(value: self.COskH, fieldNumber: 1)
        try visitor.visitSingularDoubleField(value: self.WjsgJ, fieldNumber: 2)
        if let v = _storage._otpqz {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
        }
        try visitor.visitSingularDoubleField(value: self.eDLqm, fieldNumber: 4)
        try visitor.visitSingularStringField(value: self.yyzvM, fieldNumber: 5)
        try visitor.visitSingularStringField(value: self.JdhlH, fieldNumber: 6)
        try unknownFields.traverse(visitor: &visitor)
      }
    
      
      struct Type_otpqz: Message, _MessageImplementationBase, _ProtoNameProviding {
        var ifokL: [String] {
          get { _storage._ifokL }
          set { _uniqueStorage()._ifokL = newValue }
        }
        var DXpQE: Double {
          get { _storage._DXpQE }
          set { _uniqueStorage()._DXpQE = newValue }
        }
        var YarRd: Double {
          get { _storage._YarRd }
          set { _uniqueStorage()._YarRd = newValue }
        }
        var EJAOW: String {
          get { _storage._EJAOW }
          set { _uniqueStorage()._EJAOW = newValue }
        }
        var fyQsE: Double {
          get { _storage._fyQsE }
          set { _uniqueStorage()._fyQsE = newValue }
        }
        var FFpXK: Double {
          get { _storage._FFpXK }
          set { _uniqueStorage()._FFpXK = newValue }
        }
        private var _storage = _StorageClass.defaultInstance
      
        var unknownFields = UnknownStorage()
      
        init() {}
      
        // Used to initially read a json
        init(_ dict: [String: Any]) {
          ifokL = dict["ifokL"] as! [String]
          DXpQE = dict["DXpQE"] as! Double
          YarRd = dict["YarRd"] as! Double
          EJAOW = dict["EJAOW"] as! String
          fyQsE = dict["fyQsE"] as! Double
          FFpXK = dict["FFpXK"] as! Double
        }
      
        static let protoMessageName: String = "Type_otpqz"
      
        static let _protobuf_nameMap: _NameMap = [
          1: .same(proto: "ifokL"),
          2: .same(proto: "DXpQE"),
          3: .same(proto: "YarRd"),
          4: .same(proto: "EJAOW"),
          5: .same(proto: "fyQsE"),
          6: .same(proto: "FFpXK"),
        ]
      
        private class _StorageClass {
          var _ifokL: [String] = []
          var _DXpQE: Double = 0
          var _YarRd: Double = 0
          var _EJAOW: String = String()
          var _fyQsE: Double = 0
          var _FFpXK: Double = 0
      
          static let defaultInstance = _StorageClass()
      
          private init() {}
      
          init(copying source: _StorageClass) {
            _ifokL = source._ifokL
            _DXpQE = source._DXpQE
            _YarRd = source._YarRd
            _EJAOW = source._EJAOW
            _fyQsE = source._fyQsE
            _FFpXK = source._FFpXK
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
              case 1: try decoder.decodeRepeatedStringField(value: &_storage._ifokL)
              case 2: try decoder.decodeSingularDoubleField(value: &_storage._DXpQE)
              case 3: try decoder.decodeSingularDoubleField(value: &_storage._YarRd)
              case 4: try decoder.decodeSingularStringField(value: &_storage._EJAOW)
              case 5: try decoder.decodeSingularDoubleField(value: &_storage._fyQsE)
              case 6: try decoder.decodeSingularDoubleField(value: &_storage._FFpXK)
            default: break
            }
          }
        }
      
        func traverse<V: Visitor>(visitor: inout V) throws {
          if !self.ifokL.isEmpty {
            try visitor.visitRepeatedStringField(value: self.ifokL, fieldNumber: 1)
          }
          try visitor.visitSingularDoubleField(value: self.DXpQE, fieldNumber: 2)
          try visitor.visitSingularDoubleField(value: self.YarRd, fieldNumber: 3)
          try visitor.visitSingularStringField(value: self.EJAOW, fieldNumber: 4)
          try visitor.visitSingularDoubleField(value: self.fyQsE, fieldNumber: 5)
          try visitor.visitSingularDoubleField(value: self.FFpXK, fieldNumber: 6)
          try unknownFields.traverse(visitor: &visitor)
        }
      
        
      }
    }
    struct Type_XHeqk: Message, _MessageImplementationBase, _ProtoNameProviding {
      var UrIHx: Double {
        get { _storage._UrIHx }
        set { _uniqueStorage()._UrIHx = newValue }
      }
      var glRYh: Double {
        get { _storage._glRYh }
        set { _uniqueStorage()._glRYh = newValue }
      }
      var VpTHX: Double {
        get { _storage._VpTHX }
        set { _uniqueStorage()._VpTHX = newValue }
      }
      var wjuRb: Type_wjuRb {
        get { _storage._wjuRb ?? Type_wjuRb() }
        set { _uniqueStorage()._wjuRb = newValue }
      }
      var Gepld: Double {
        get { _storage._Gepld }
        set { _uniqueStorage()._Gepld = newValue }
      }
      var lQqdh: String {
        get { _storage._lQqdh }
        set { _uniqueStorage()._lQqdh = newValue }
      }
      private var _storage = _StorageClass.defaultInstance
    
      var unknownFields = UnknownStorage()
    
      init() {}
    
      // Used to initially read a json
      init(_ dict: [String: Any]) {
        UrIHx = dict["UrIHx"] as! Double
        glRYh = dict["glRYh"] as! Double
        VpTHX = dict["VpTHX"] as! Double
        wjuRb = Type_wjuRb(dict["wjuRb"] as! [String: Any])
        Gepld = dict["Gepld"] as! Double
        lQqdh = dict["lQqdh"] as! String
      }
    
      static let protoMessageName: String = "Type_XHeqk"
    
      static let _protobuf_nameMap: _NameMap = [
        1: .same(proto: "UrIHx"),
        2: .same(proto: "glRYh"),
        3: .same(proto: "VpTHX"),
        4: .same(proto: "wjuRb"),
        5: .same(proto: "Gepld"),
        6: .same(proto: "lQqdh"),
      ]
    
      private class _StorageClass {
        var _UrIHx: Double = 0
        var _glRYh: Double = 0
        var _VpTHX: Double = 0
        var _wjuRb: Type_wjuRb? = nil
        var _Gepld: Double = 0
        var _lQqdh: String = String()
    
        static let defaultInstance = _StorageClass()
    
        private init() {}
    
        init(copying source: _StorageClass) {
          _UrIHx = source._UrIHx
          _glRYh = source._glRYh
          _VpTHX = source._VpTHX
          _wjuRb = source._wjuRb
          _Gepld = source._Gepld
          _lQqdh = source._lQqdh
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
            case 1: try decoder.decodeSingularDoubleField(value: &_storage._UrIHx)
            case 2: try decoder.decodeSingularDoubleField(value: &_storage._glRYh)
            case 3: try decoder.decodeSingularDoubleField(value: &_storage._VpTHX)
            case 4: try decoder.decodeSingularMessageField(value: &_storage._wjuRb)
            case 5: try decoder.decodeSingularDoubleField(value: &_storage._Gepld)
            case 6: try decoder.decodeSingularStringField(value: &_storage._lQqdh)
          default: break
          }
        }
      }
    
      func traverse<V: Visitor>(visitor: inout V) throws {
        try visitor.visitSingularDoubleField(value: self.UrIHx, fieldNumber: 1)
        try visitor.visitSingularDoubleField(value: self.glRYh, fieldNumber: 2)
        try visitor.visitSingularDoubleField(value: self.VpTHX, fieldNumber: 3)
        if let v = _storage._wjuRb {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
        }
        try visitor.visitSingularDoubleField(value: self.Gepld, fieldNumber: 5)
        try visitor.visitSingularStringField(value: self.lQqdh, fieldNumber: 6)
        try unknownFields.traverse(visitor: &visitor)
      }
    
      
      struct Type_wjuRb: Message, _MessageImplementationBase, _ProtoNameProviding {
        var Mdlex: String {
          get { _storage._Mdlex }
          set { _uniqueStorage()._Mdlex = newValue }
        }
        var ECWuq: [Double] {
          get { _storage._ECWuq }
          set { _uniqueStorage()._ECWuq = newValue }
        }
        var eEKyp: Double {
          get { _storage._eEKyp }
          set { _uniqueStorage()._eEKyp = newValue }
        }
        var IiNcY: String {
          get { _storage._IiNcY }
          set { _uniqueStorage()._IiNcY = newValue }
        }
        var wXdpl: Double {
          get { _storage._wXdpl }
          set { _uniqueStorage()._wXdpl = newValue }
        }
        var zmSMh: String {
          get { _storage._zmSMh }
          set { _uniqueStorage()._zmSMh = newValue }
        }
        private var _storage = _StorageClass.defaultInstance
      
        var unknownFields = UnknownStorage()
      
        init() {}
      
        // Used to initially read a json
        init(_ dict: [String: Any]) {
          Mdlex = dict["Mdlex"] as! String
          ECWuq = dict["ECWuq"] as! [Double]
          eEKyp = dict["eEKyp"] as! Double
          IiNcY = dict["IiNcY"] as! String
          wXdpl = dict["wXdpl"] as! Double
          zmSMh = dict["zmSMh"] as! String
        }
      
        static let protoMessageName: String = "Type_wjuRb"
      
        static let _protobuf_nameMap: _NameMap = [
          1: .same(proto: "Mdlex"),
          2: .same(proto: "ECWuq"),
          3: .same(proto: "eEKyp"),
          4: .same(proto: "IiNcY"),
          5: .same(proto: "wXdpl"),
          6: .same(proto: "zmSMh"),
        ]
      
        private class _StorageClass {
          var _Mdlex: String = String()
          var _ECWuq: [Double] = []
          var _eEKyp: Double = 0
          var _IiNcY: String = String()
          var _wXdpl: Double = 0
          var _zmSMh: String = String()
      
          static let defaultInstance = _StorageClass()
      
          private init() {}
      
          init(copying source: _StorageClass) {
            _Mdlex = source._Mdlex
            _ECWuq = source._ECWuq
            _eEKyp = source._eEKyp
            _IiNcY = source._IiNcY
            _wXdpl = source._wXdpl
            _zmSMh = source._zmSMh
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
              case 1: try decoder.decodeSingularStringField(value: &_storage._Mdlex)
              case 2: try decoder.decodeRepeatedDoubleField(value: &_storage._ECWuq)
              case 3: try decoder.decodeSingularDoubleField(value: &_storage._eEKyp)
              case 4: try decoder.decodeSingularStringField(value: &_storage._IiNcY)
              case 5: try decoder.decodeSingularDoubleField(value: &_storage._wXdpl)
              case 6: try decoder.decodeSingularStringField(value: &_storage._zmSMh)
            default: break
            }
          }
        }
      
        func traverse<V: Visitor>(visitor: inout V) throws {
          try visitor.visitSingularStringField(value: self.Mdlex, fieldNumber: 1)
          if !self.ECWuq.isEmpty {
            try visitor.visitRepeatedDoubleField(value: self.ECWuq, fieldNumber: 2)
          }
          try visitor.visitSingularDoubleField(value: self.eEKyp, fieldNumber: 3)
          try visitor.visitSingularStringField(value: self.IiNcY, fieldNumber: 4)
          try visitor.visitSingularDoubleField(value: self.wXdpl, fieldNumber: 5)
          try visitor.visitSingularStringField(value: self.zmSMh, fieldNumber: 6)
          try unknownFields.traverse(visitor: &visitor)
        }
      
        
      }
    }
  }
}