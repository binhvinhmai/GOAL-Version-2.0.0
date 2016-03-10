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

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet weak var Userpoints: UILabel!
    @IBOutlet weak var eventTableView: UITableView!

    @IBAction func UnWindAction(unwindSegue: UIStoryboardSegue)
    {
    }
    
    func refresh(sender:AnyObject)
    {
        // Update data
        self.Userpoints.reloadInputViews()
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //Do any additional setup after loading the view, typically from a nib.
        Userpoints.text = ("\(owner.getTotal())")
        loadArray() // Create data, will have to be deleted later.
        ////self.eventTableView.reloadData()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return ListOfEvents.size()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cellIdentifier = "KCEventTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! KCEventTableViewCell
        // Above text - we first get the cell to use the reuseCellIdentifier
        // and we downcast it as a KCEventTableViewCell
        let event = ListOfEvents.eventArray[indexPath.row]
        
        if let label = cell.eventNameLabel
        {
            label.text? = ("\(event.getName())")
        }
        
        if let detailLabel = cell.eventDetailLabel
        {
            detailLabel.text? = ("\(event.getLocation())\t\(event.getDate())")
        }
        /*
        cell.eventNameLabel.text = ("\(event.getName())")
        cell.eventDetailLabel.text = ("\(event.getLocation())\t\(event.getDate())")*/
        
        // Configure cell
        // ERROR SHOULD PROBABLY BE SOMEWHERE HERE OR IN THE CONSTRAINTS
        
        return cell
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath)
    {
        
    }

}
