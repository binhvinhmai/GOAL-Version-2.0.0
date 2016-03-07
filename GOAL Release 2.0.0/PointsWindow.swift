//
//  PointsWindow.swift
//  GOAL Release 2.0.0
//
//  Created by Binh Vinh Mai on 3/3/16.
//  Copyright © 2016 Binh Vinh Mai. All rights reserved.
//

import UIKit

class PointsWindow: UIViewController
{
    
    
    
    @IBOutlet weak var codeDialogue: UILabel!
    @IBOutlet weak var codeInput: UITextField!
    
    @IBAction func getPoints(sender: AnyObject)
    {
       if self.codeInput.text?.isEmpty == true
       {
            self.codeDialogue.text = "Please enter a valid code"
        }
        else if (ListOfEvents.verifyCode(Int(self.codeInput.text!)!, user: owner) == false)
       {
            self.codeDialogue.text? = "Code is not valid"
        }
        else if (ListOfEvents.verifyCode(Int(self.codeInput.text!)!, user: owner) == true)
       {
            self.codeDialogue.text? = "Code is valid!"

        }
    }
    
    
    /*
    
    @IBAction func getPoints(sender: AnyObject)
    {

        // Code was not found
        else if (ListOfEvents.verifyCode(Int(codeInput.text!)!, user: owner) == false)
        {
            codeDialogue.text = "Code is not valid"
        }
        // Code was found
        else
        {
            owner.addPoints(ListOfEvents.findCode(Int(codeInput.text!)!))
            perform()
        }
    }
*/
}
