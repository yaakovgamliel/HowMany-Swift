//
//  G2THowManyCounter.swift
//  HowMany?
//
//  Created by yaakov gamliel on 9/28/14.
//  Copyright (c) 2014 g2think. All rights reserved.
//

import Foundation

class HowManyCounter {
    
    let storageKey = "howManyTimes"
    
    func howManyTimes() -> NSInteger {
        var times = NSUserDefaults.standardUserDefaults().integerForKey(storageKey)
        return times;
    }
   
    func oneMoreTime() {
        var currentCount = NSUserDefaults.standardUserDefaults().integerForKey(storageKey)
        currentCount += 1
        NSUserDefaults.standardUserDefaults().setInteger((currentCount), forKey: storageKey)
    }
    
    func resetCounter() {
        NSUserDefaults.standardUserDefaults().setInteger(0, forKey: storageKey)
        NSUserDefaults.standardUserDefaults().synchronize()
    }
}
