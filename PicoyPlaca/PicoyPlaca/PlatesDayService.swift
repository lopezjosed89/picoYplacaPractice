//
//  PlatesDayService.swift
//  PicoyPlaca
//
//  Created by Jose Daniel Lopez Franco on 5/18/17.
//  Copyright © 2017 Jose Daniel Lopez. All rights reserved.
//

import Foundation
import Alamofire

struct DayInformation {
    
    func retrieveDayInformation(url: String) {
        Alamofire.request(url).responseJSON { response in
            if let JSON = response.result.value {
               
            }
            
        }
    }
}
