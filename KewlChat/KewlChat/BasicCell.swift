//
//  BasicCell.swift
//  KewlChat
//
//  Created by Warren Scipio on 2/20/16.
//  Copyright © 2016 Warren Scipio. All rights reserved.
//

import Foundation
import Alamofire
import UIKit




class BasicCell: UITableViewCell {

    
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var sender: UILabel!
    
    
    
    func viewDidLoad() {
        viewDidLoad()
      
        print("this is the cell class")
        
        
    }
    

    
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("cell #\(indexPath.row)!")
    }
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int  {
        return 1
    }
  
    

    
    
  
    
    
    
    
    
    
    
    
}
