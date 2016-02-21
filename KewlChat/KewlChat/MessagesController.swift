//
//  MessagesController.swift
//  KewlChat
//
//  Created by Warren Scipio on 2/20/16.
//  Copyright © 2016 Warren Scipio. All rights reserved.
//

import Foundation
import Alamofire
import UIKit






class MessagesController: UIViewController {
    
    
    
    
    @IBOutlet weak var tableView: UITableView!

    
    
    var items: [String] = ["Finally this is a longer message lets see what happens with this one even longr noooooooooow ok so how about 3 lines of text", "!@#$", "Swift"]
    
    var names: [String] = ["Warren", "Noah","Stefan"]
    
    
    func configureTableView() {
      
        tableView.estimatedRowHeight = 200.0
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
   let basicCellIdentifier = "BasicCell"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("this is the table class")
        configureTableView()
        //self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }

    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("cell #\(indexPath.row)!")
    }
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return basicCellAtIndexPath(indexPath)
    }
    
    func basicCellAtIndexPath(indexPath:NSIndexPath) -> BasicCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(basicCellIdentifier) as! BasicCell
        setSenderForCell(cell, indexPath: indexPath)
        setMessageForCell(cell, indexPath: indexPath)
        return cell
    }
    
    func setSenderForCell(cell:BasicCell, indexPath:NSIndexPath) {
        let name = names[indexPath.row] as String
        cell.sender.text = name
        cell.sender.numberOfLines = 0
    }
    
    func setMessageForCell(cell:BasicCell, indexPath:NSIndexPath) {
        let message = items[indexPath.row] as String
          cell.message.text = message as String
        cell.message.numberOfLines = 0 
       
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int  {
        return items.count
    }
    

    /*
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int  {
        return 1
    }
    
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell  {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        */
     /*
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
*/
    
    
    
    
}