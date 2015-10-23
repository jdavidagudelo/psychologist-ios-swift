//
//  ViewController.swift
//  Psychologist
//
//  Created by Ingenieria y Software on 21/10/15.
//  Copyright © 2015 Ingenieria y Software. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {
    @IBAction func nothing(sender: UIButton)
    {
        performSegueWithIdentifier("nothing", sender: self)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController as UIViewController
        if let navCon = segue.destinationViewController as? UINavigationController
            {
                destination = navCon.visibleViewController!
        }
        if let hvc = destination as? HappinessViewController
        {
            if let identifier = segue.identifier
            {
                switch identifier
                {
                    case "sad": hvc.happiness = 0
                    case "happy": hvc.happiness = 100
                    case "meh": hvc.happiness = 50
                    case "nothing": hvc.happiness = 25
                    default: break;
                }
            }
        }
    }


}

