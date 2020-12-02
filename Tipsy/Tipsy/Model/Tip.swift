//
//  Tip.swift
//  Tipsy
//
//  Created by Özkan Adar on 26/05/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Tip {
    
    var tip: String?
    var lastTip: Double?
    
    init(tip: String) {
        self.tip = tip
    }
    
    mutating func getTip() -> Double{
        if tip == "0%" {
            lastTip = 1.0
            
        }
        else if tip == "10%" {
            lastTip = 0.1
        }
            
        else {
            lastTip = 0.2
        }
        return lastTip!
    }
    
    
    
}
