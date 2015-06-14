//
//  ViewController.swift
//  iAdSample
//
//  Created by STEFAN JOSTEN on 13/06/15.
//  Copyright (c) 2015 Stefan. All rights reserved.
//

import UIKit
import iAd

var counter = 0

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Initialize the Ad
        UIViewController.prepareInterstitialAds()
    }

    @IBAction func unwindFromTargetViewController(segue: UIStoryboardSegue) {
     
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        counter++
        if counter == 2 {
            counter = 0
            let destination = segue.destinationViewController as! UIViewController
            destination.interstitialPresentationPolicy = ADInterstitialPresentationPolicy.Automatic
        }
    }
    
}

