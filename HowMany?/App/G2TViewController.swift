//
//  ViewController.swift
//  HowMany?
//
//  Created by yaakov gamliel on 9/28/14.
//  Copyright (c) 2014 g2think. All rights reserved.
//

import UIKit


class G2TViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        updateCounterLabel()
    }

    @IBAction func counterButtonTouched(sender: AnyObject) {
        var counter = HowManyCounter()
        counter.oneMoreTime()
        updateCounterLabel()
    }
    
    func updateCounterLabel() {
        var counter = HowManyCounter()
        counterLabel.text = String(counter.howManyTimes())
    }
}

