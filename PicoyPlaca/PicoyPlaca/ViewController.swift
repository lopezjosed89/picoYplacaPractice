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
    
    var service = DayInformation()
    let host = "https://raw.githubusercontent.com/lopezjosed89/picoYplacaPractice/master/pyp.json"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        service.retrieveDayInformation(url: host)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

