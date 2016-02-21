//
//  ConversationList.swift
//  KewlChat
//
//  Created by Warren Scipio on 2/20/16.
//  Copyright © 2016 Warren Scipio. All rights reserved.
//

import Foundation

import UIKit


class ConversationList: UIViewController, UITableViewDataSource,UITableViewDelegate {

    
    @IBOutlet weak var conversationTable: UITableView!
    
    var items: [String] = ["Conversation 1testing if this works I might be kida mad actually so it better not work Fucking jesus so far it is working if this works for a 3rd line omg ........................................................", "Conversation 2", "Conversation 3"]
    
    var names: [String] = ["Warren", "Noah","Stefan"]
    
    
    func configureTableView() {
        
        conversationTable.estimatedRowHeight = 200.0
        conversationTable.rowHeight = UITableViewAutomaticDimension
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
        sender.text = "sender"
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
    

    
    
    

}
