//
//  ViewController.swift
//  MyTipsyApp
//
//  Created by Павел Широкий on 05.03.2024.
//

import UIKit

class CalculateViewController: UIViewController, UITextFieldDelegate {

    var tipsyBrain = TipsyBrain()
    
    @IBOutlet var amountTextField: UITextField!
    @IBOutlet var splitPerson: UILabel!
    
    @IBOutlet var tenPercent: UIButton!
    @IBOutlet var fifteenPercent: UIButton!
    @IBOutlet var twentyPercent: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        amountTextField.delegate = self
        amountTextField.keyboardType = UIKeyboardType.decimalPad
        amountTextField.enablesReturnKeyAutomatically = false
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func percentButtonPressed(_ sender: UIButton) {
        
        amountTextField.endEditing(true)
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
            resultVC.resultValue = tipsyBrain.getResutl(text: amountTextField, percent: tipsyBrain.percentValue ?? 10, stepper: tipsyBrain.stepperValue ?? 1)
            resultVC.resultExplanation = tipsyBrain.getResultExplanation(totalPersons: tipsyBrain.stepperValue ?? 1, tipsPercent: tipsyBrain.percentValue ?? 10)
        }
    }
    
}

