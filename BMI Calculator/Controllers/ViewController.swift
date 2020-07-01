//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightlabel: UILabel!
    @IBOutlet weak var weightlabel: UILabel!
    @IBOutlet weak var heightslider: UISlider!
    @IBOutlet weak var weightslider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightsliderchanged(_ sender: UISlider) {
        
       let height = String(format: "%.2f", sender.value)
        heightlabel.text? = "\(height)m"
    }
    @IBAction func weightsliderchanged(_ sender: UISlider) {
        
       let weight = Int(sender.value)
        weightlabel.text? = "\(String(weight))kg"
    }
    @IBAction func calcbtnpressed(_ sender: UIButton) {
        
        let height = heightslider.value
        let weight = weightslider.value
        
        let bmi = weight/(pow(height, 2))
        
        performSegue(withIdentifier: "Result", sender: bmi)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let resultVC = segue.destination as! ResultViewController
        
        let bmi = sender as! Float
        
        resultVC.result = bmi
        
    }
    
}

