//
//  PicoYPlacaService.swift
//  PicoyPlaca
//
//  Created by Jose Daniel Lopez on 5/15/17.
//  Copyright © 2017 Jose Daniel Lopez. All rights reserved.
//

import Foundation
import Alamofire

struct RequestData {
    
    func RetrievePicoYPlacaInfo(){
        Alamofire.request("https://httpbin.org/get").responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
        

    }
}
