//
//  LoginScreen.swift
//  KewlChat
//
//  Created by Warren Scipio on 2/20/16.
//  Copyright © 2016 Warren Scipio. All rights reserved.
//

import Foundation
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Alamofire.request(.GET, "https://httpbin.org/get")

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
