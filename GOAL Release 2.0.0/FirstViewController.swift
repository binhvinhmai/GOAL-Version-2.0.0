//
//  FirstViewController.swift
//  GOAL Release 2.0.0
//
//  Created by Binh Vinh Mai on 3/2/16.
//  Copyright © 2016 Binh Vinh Mai. All rights reserved.
//

import UIKit

// Create global variables
var owner = goalUser()

class FirstViewController: UIViewController
{
    @IBOutlet weak var Userpoints: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //Do any additional setup after loading the view, typically from a nib.
        Userpoints.text = ("\(owner.getTotal())")
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

