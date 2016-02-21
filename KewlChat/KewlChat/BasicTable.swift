//
//  BasicTable.swift
//  KewlChat
//
//  Created by Warren Scipio on 2/20/16.
//  Copyright © 2016 Warren Scipio. All rights reserved.
//

import Foundation
import Alamofire
import UIKit




class BasicTable: UITableView, UITableViewDataSource {
    
    
 
    var items: [String] = ["Finally this is a longer message lets see what happens with this one even longr noooooooooow ok so how about 3 lines of text", "!@#$", "Swift"]
    
    
     func viewDidLoad() {
        viewDidLoad()
        print("this is the table class")
        
        
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("cell #\(indexPath.row)!")
    }
    
    
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int  {
        return 1
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int  {
        return items.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell  {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        var sender = UILabel(frame: CGRect(x: 0, y: 0, width: cell.bounds.size.width, height: 10))
        sender.textAlignment = NSTextAlignment.Left
        sender.textColor = UIColor.grayColor()
        sender.font = sender.font.fontWithSize(10)
        sender.text = "sender"
        sender.numberOfLines = 0
        sender.lineBreakMode = NSLineBreakMode.ByWordWrapping
        
        [cell.contentView .addSubview(sender)]
        cell.alignmentRectForFrame(CGRect(x: 0,y: 10, width: cell.bounds.size.width, height: 21))
        cell.textLabel!.text = items[indexPath.row] as? String
        cell.textLabel!.numberOfLines = 0
        cell.textLabel!.lineBreakMode = NSLineBreakMode.ByWordWrapping;
        
        //var message = UILabel(frame: CGRectMake(0,10, cell.bounds.size.width, 21))
        //message.numberOfLines = 0
        //message.textAlignment = NSTextAlignment.Left
        //message.text = "I'am a test message tha is more than one line long "
        
        
        //[cell.contentView .addSubview(message)]
        
        
        
        return cell
    }

    
    
    
}
