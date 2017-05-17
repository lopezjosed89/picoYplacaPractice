//
//  ViewController.swift
//  PicoyPlaca
//
//  Created by Jose Daniel Lopez on 5/13/17.
//  Copyright © 2017 Jose Daniel Lopez. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        RetrievePicoYPlacaInfo()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func RetrievePicoYPlacaInfo(){
        Alamofire.request("https://httpbin.org/get").responseJSON { response in
            print(">>>>>>request ",response.request)  // original URL request
            print(">>>>response ",response.response) // HTTP URL response
            print(">>>>Data ",response.data)     // server data
            print("result ",response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
        
        
    }


}

