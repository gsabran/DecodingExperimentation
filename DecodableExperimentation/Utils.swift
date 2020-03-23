// Created by guillaume_sabran on 3/23/20.
// Copyright © 2020 Airbnb Inc. All rights reserved.

import Foundation

enum _DecodingError: Error {
  case badData
}

func parse<Type>(_ data: Any?, as: Type.Type) throws -> Type {
  guard let value = data as? Type else {
    throw _DecodingError.badData
  }
  return value
}
