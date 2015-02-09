//
//  ViewController.swift
//  MyDailySecret
//
//  Created by alxcancado on 8/02/15.
//  Copyright (c) 2015 Alxcancado. All rights reserved.
//

import UIKit
import LocalAuthentication

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var authenticationObject = LAContext()
        var authenticationError:NSError?
        
        authenticationObject.canEvaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, error: &authenticationError)
        
        if authenticationError != nil {
            // then it is an error: auth not available in this version of iOS
            println("Authnetication not available in this version of iOS")
        }
        else {
            // Authentication available: proceed as we were
            authenticationObject.evaluatePolicy(LAPolicy.DeviceOwnerAuthenticationWithBiometrics, localizedReason: "Access your locked Daily Secret with a touch of your finger!", reply: { (complete:Bool!, error:NSError!) -> Void in
                
                if error != nil {
                    // There is an error - user likely pressed Cancel
                    println(error.localizedDescription)
                }
                
                
                else {
                    // There is no Error - Authentication completed succesfully
                    if complete == true {
                        println("Authentication successfull!")
                        var secreteViewController = SecretViewController(nibName: nil, bundle: nil)
                        self.presentViewController(secreteViewController, animated: true, completion: nil)
                    }
                    else {
                        // User was not the correct user
                        println("Authentication Failed!")
                    }
                }
            })
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

