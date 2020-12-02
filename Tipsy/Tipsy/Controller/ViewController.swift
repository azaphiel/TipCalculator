//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var tip: String?
    var calculatorBrain: CalculatorBrain?
    var result: Double?
    var people: String?
    
    @IBOutlet weak var amountTextArea: UITextField!
    @IBOutlet weak var splitNumber: UILabel!
    
    @IBOutlet weak var tipSelected0: UIButton!
    @IBOutlet weak var tipSelected10: UIButton!
    @IBOutlet weak var tipSelected20: UIButton!
    
    @IBAction func tipButtonPressed(_ sender: UIButton) {
        if sender.currentTitle! == "0%" {
            tipSelected0.isSelected = true
            tipSelected10.isSelected = false
            tipSelected20.isSelected = false
            
            tip = sender.currentTitle!
        }
        else if sender.currentTitle! == "10%" {
            tipSelected10.isSelected = true
            tipSelected0.isSelected = false
            tipSelected20.isSelected = false
            tip = sender.currentTitle!
        }
        else {
            tipSelected20.isSelected = true
            tipSelected0.isSelected = false
            tipSelected10.isSelected = false
            tip = sender.currentTitle!
        }
    }
    
    @IBAction func splitStepperPressed(_ sender: UIStepper) {
        people = String(format: "%.0f", sender.value)
        splitNumber.text = people
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        calculatorBrain = CalculatorBrain(amount: amountTextArea.text ?? "0", tip: tip ?? "0%", person: splitNumber.text ?? "2")
        result = calculatorBrain?.calculate()
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! ResultViewController
        
        destinationVC.result = result
        destinationVC.tip = self.tip
        destinationVC.people = self.people
    }
}

