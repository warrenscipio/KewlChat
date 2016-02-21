//
//  ConversationList.swift
//  KewlChat
//
//  Created by Warren Scipio on 2/20/16.
//  Copyright © 2016 Warren Scipio. All rights reserved.
//

import Foundation
import Alamofire
import UIKit
import SwiftyJSON

class ConversationList: UIViewController, UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate {

    
    @IBOutlet weak var conversationTable: UITableView!
    
    @IBOutlet weak var sendButton: UIButton!
    
    @IBOutlet weak var chatBox: UITextField!
    var items: [String] = ["What up","Wanna buy me chipotle?"]
    
    var names: [String] = ["Warren","Warren"]
    var name = ""
    
    
    
    func configureTableView() {
        
        conversationTable.estimatedRowHeight = 200.0
        conversationTable.rowHeight = UITableViewAutomaticDimension
    }
    
    @IBAction func sendButtonClicked(sender: AnyObject) {
        
        sendTextMessage(self.chatBox.text!)
       
        sendTextMessage("I know where you live")
        
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        
        return false
    }
    
    
    func sendTextMessage(message:String){
        
        if message == "I know where you live" {
            names.append("Warren")
            items.append(message)
        }else{
            let loginScreen:LoginScreen = LoginScreen()
            items.append(message)
            names.append("Me:")
        }
        
        dispatch_async(dispatch_get_main_queue(), { () -> Void in
            //reload your tableView
            self.conversationTable.reloadData()
            
        })
        
        
        conversationTable.resignFirstResponder()
        
        
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int  {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell  {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell

        var sender = UILabel(frame: CGRect(x: 0, y: 0, width: cell.bounds.size.width, height: 10))
        sender.textAlignment = NSTextAlignment.Left
        sender.textColor = UIColor.grayColor()
        sender.font = sender.font.fontWithSize(10)
        sender.text = names[indexPath.row] as String
        sender.numberOfLines = 0
        sender.lineBreakMode = NSLineBreakMode.ByWordWrapping

        [cell.contentView .addSubview(sender)]
        cell.alignmentRectForFrame(CGRect(x: 0,y: 10, width: cell.bounds.size.width, height: 21))
        cell.textLabel!.text = items[indexPath.row] as String
        cell.textLabel!.numberOfLines = 0
        cell.textLabel!.lineBreakMode = NSLineBreakMode.ByWordWrapping;


        return cell
    }



    override func viewDidLoad() {
        super.viewDidLoad()
        print("this is the table class")
        
        
        
      
        
    
        self.conversationTable.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        configureTableView()
        
        self.chatBox.delegate = self;
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillShow:"), name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("keyboardWillHide:"), name: UIKeyboardWillHideNotification, object: nil)
        
        

        
        
    
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("cell #\(indexPath.row)!")
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return items.count
    }
    
    
    func keyboardWillShow(notification: NSNotification) {
        sendButton.hidden = false
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue() {
            self.view.frame.origin.y -= keyboardSize.height
        }
        
    }
    
    func keyboardWillHide(notification: NSNotification) {
        sendButton.hidden = true
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.CGRectValue() {
            self.view.frame.origin.y += keyboardSize.height
        }
    }

    
    
    

}
