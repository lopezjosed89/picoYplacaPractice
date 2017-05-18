//
//  ErrorData.swift
//  PicoyPlaca
//
//  Created by Jose Daniel Lopez on 5/17/17.
//  Copyright © 2017 Jose Daniel Lopez. All rights reserved.
//

import Foundation

protocol ErrorData : Parseable {
    var statusCode : Int { get }
    var message : String { get }
}

struct Error : ErrorData {
    let statusCode : Int
    let message : String
    
    init(json: NSDictionary) {
        self.statusCode = json["status_code"] as? Int ?? 0
        self.message = json["status_message"] as? String ?? ""
    }
    
    init(statusCode: Int, message: String) {
        self.statusCode = statusCode
        self.message = message
    }
}
