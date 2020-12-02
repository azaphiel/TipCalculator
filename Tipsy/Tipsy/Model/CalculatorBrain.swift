//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Özkan Adar on 26/05/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    let amount: Double?
    var tipStruct: Tip?
    var finalTip: Double?
    let person: Int?
    
    
    init(amount: String, tip: String, person: String) {
        
        self.amount = Double(amount)
        tipStruct = Tip(tip: tip)
        finalTip = tipStruct?.getTip()
        self.person = Int(person)
    }
    
    
    func calculate() -> Double{
        print("The amount is: \(amount ?? 0)")
        print("Selected tip is: \(finalTip ?? 1)")
        print("Total person is: \(person ?? 2)")
        
        let total = ((amount! * finalTip!) + amount!) / Double(person!)
        print(total)
        return total
        
    }
}
