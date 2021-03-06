//
//  ViewController.swift
//  SnowFalling
//
//  Created by pixyzehn on 2/10/15.
//  Copyright (c) 2015 pixyzehn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var sfv: SnowFallingView?
    
    enum State {
        case Snowing
        case Stoping
    }
    
    var currentState: State = .Snowing

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blackColor()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        sfv = SnowFallingView(frame: CGRectMake(0, 0, view.frame.size.width * 2, view.frame.size.height * 2))
        sfv?.flakeFileName        = "snowflake"
        sfv?.flakesCount          = 100  // Default is 100.
        sfv?.flakeWidth           = 40.0 // Default is 40.0
        sfv?.flakeHeight          = 46.0 // Default is 46.0
        sfv?.flakeMinimumSize     = 0.6  // Default is 0.4
        sfv?.flakeMaximumSize     = 0.8  // Default is 0.8
        sfv?.animationDurationMin = 6.0  // Default is 6.0
        sfv?.animationDurationMax = 12.0 // Default is 12.0
        view.addSubview(sfv!)
        sfv?.startSnow()
        
        // Triple tap action
        var tripleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "handleTripleTap")
        tripleTap.numberOfTapsRequired = 3
        view.addGestureRecognizer(tripleTap)
    }
    
    func handleTripleTap() {
        if currentState == .Snowing {
            sfv?.stopSnow()
            currentState = .Stoping
        } else {
            sfv?.startSnow()
            currentState = .Snowing
        }
    }

}

