//
//  LoginScreen.swift
//  KewlChat
//
//  Created by Warren Scipio on 2/20/16.
//  Copyright © 2016 Warren Scipio. All rights reserved.
//

import Foundation
import UIKit
import Alamofire

class LoginScreen: UIViewController {
    
    @IBOutlet weak var profile: UILabel!
   
     var usernameGlobal = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("pokemon")
        
        print (usernameGlobal)
        
        if usernameGlobal != "" {
            
            profile.text = usernameGlobal
           
            
        }

         print ("done")
        
        
        Alamofire.request(.GET, "http://kewlchat.herokuapp.com/users")
            .responseJSON { response in
                //print(response.request)  // original URL request
                //print(response.response) // URL response
                //print(response.data)     // server data
                //print(response.result)   // result of response serialization
                
                if let JSON = response.result.value {
                    print("JSON: \(JSON)")
                }
        }
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
