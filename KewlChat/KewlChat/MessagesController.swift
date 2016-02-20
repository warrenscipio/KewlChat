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






class MessagesController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
    var items: [String] = ["Finally this is a longer message lets see what happens with this one", "!@#$", "Swift"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("this is the table class")
        
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
    }
/*
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        
        return cell
    }
    */
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
    }
    
 

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int  {
        return 1
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int  {
        return items.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell  {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel!.text = items[indexPath.row] as? String
        cell.textLabel!.numberOfLines = 0;
        
        return cell
    }

    
    
    
    
}