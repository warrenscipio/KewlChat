//
//  ViewController.swift
//  KewlChat
//
//  Created by Warren Scipio on 2/19/16.
//  Copyright © 2016 Warren Scipio. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class ViewController: UIViewController {

    
    @IBOutlet weak var usernameInput: UITextField!
    
    @IBOutlet weak var wrongUserText: UILabel!
    @IBOutlet weak var passwordInput: UITextField!
    
    @IBAction func Loginbutton(sender: AnyObject) {
        
        let username = usernameInput.text
        
        if (username=="Warren" || username=="Noah" || username == "Stefan"){
            
            
            
            
           
            
            
        }
        else{
            wrongUserText.hidden = false
        }
    
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        Alamofire.request(.GET, "http://kewlchat.herokuapp.com/conversations/").response { (req, res, data, error) -> Void in
            print(res)
            let outputString = NSString(data: data!, encoding:NSUTF8StringEncoding)
            print(outputString)
        }
        
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    


}

