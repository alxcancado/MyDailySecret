//
//  SecretViewController.swift
//  MyDailySecret
//
//  Created by alxcancado on 8/02/15.
//  Copyright (c) 2015 Alxcancado. All rights reserved.
//

import UIKit

class SecretViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Setup a View controller
        view.backgroundColor = UIColor.whiteColor()
        
        // create a UILabel obejct
        var secretTextLabel = UILabel(frame: CGRectMake(10, view.frame.midY-50, view.frame.maxX-20, 100))
        secretTextLabel.text = "I secretelly have a crush on..."
        secretTextLabel.textColor = UIColor.blackColor()
        
        // Add that view to the main view
        view.addSubview(secretTextLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
