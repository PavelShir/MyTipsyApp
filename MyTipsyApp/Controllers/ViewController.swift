//
//  ViewController.swift
//  MyTipsyApp
//
//  Created by Павел Широкий on 05.03.2024.
//

import UIKit

class ViewController: UIViewController {

    var tipsyBrain = TipsyBrain()
    
    @IBOutlet var amountTextField: UITextField!
    @IBOutlet var splitPerson: UILabel!
    
    @IBOutlet var tenPercent: UIButton!
    @IBOutlet var fifteenPercent: UIButton!
    @IBOutlet var twentyPercent: UIButton!
    
    
    @IBAction func percentButtonPressed(_ sender: UIButton) {
        
        let percent = sender.currentTitle ?? "10 %"
        tipsyBrain.getColor(percent, tenPercent: tenPercent, fifteenPercent: fifteenPercent, twentyPercent: twentyPercent)
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        tipsyBrain.getStepperValue(sender.value, label: splitPerson)
    }
    
    @IBAction func calulateButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "GoToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToResult" {
            guard let resultVC = segue.destination as? ResultViewController else { return }
        }
    }
}

