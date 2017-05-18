//
//  PicoYPlacaResponse.swift
//  PicoyPlaca
//
//  Created by Jose Daniel Lopez on 5/17/17.
//  Copyright © 2017 Jose Daniel Lopez. All rights reserved.
//

import Foundation

protocol Parseable {
    init(json: NSDictionary)
}

enum PicoYPlacaResponse<Value: Parseable> {
    case failure(ErrorData)
    case notConnectedToInternet
    case success(Value)
}



