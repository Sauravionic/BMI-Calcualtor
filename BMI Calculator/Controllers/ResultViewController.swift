//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Saurav Srivastava on 02/06/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var result : Float = 0
    @IBOutlet weak var resultlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        resultlabel.text? = String(format: "%.1f", result)
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        
    }
    
}
