//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Özkan Adar on 26/05/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var subResultText: UILabel!
    var result: Double?
    var people: String?
    var tip: String?
    override func viewDidLoad() {
        super.viewDidLoad()
        resultText.text = String(format: "%.2f", result!)
        subResultText.text = "Split between \(people ?? "2") people, with \(tip ?? "error tip") tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
