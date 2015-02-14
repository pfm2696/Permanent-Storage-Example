//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Peter & Liz  on 2/12/15.
//  Copyright (c) 2015 P&L Studios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        NSUserDefaults.standardUserDefaults().setObject("Peter", forKey: "name")
    
        var name = NSUserDefaults.standardUserDefaults().objectForKey("name")! as String
        
        println(name)
        
        var array = [1,2,3]
        
        NSUserDefaults.standardUserDefaults().setObject(array, forKey: "array")
        
        var recalledArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as NSArray
        
        println(recalledArray[2])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

