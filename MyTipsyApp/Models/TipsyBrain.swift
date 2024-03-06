//
//  TipsyBrain.swift
//  MyTipsyApp
//
//  Created by Павел Широкий on 05.03.2024.
//

import UIKit

struct TipsyBrain {
    
    let percentColor = UIColor(red: 250/255, green: 163/255, blue: 0/255, alpha: 1)
    let percentButtonLabel = ["5 %", "10 %", "15 %"]
    var stepperValue: Int?
    var percentValue: Int?
    
    mutating func getColor(_ sender: String, tenPercent: UIButton, fifteenPercent: UIButton, twentyPercent: UIButton) {
        switch sender {
        case percentButtonLabel[0]:
            tenPercent.backgroundColor = percentColor
            fifteenPercent.backgroundColor = .clear
            twentyPercent.backgroundColor = .clear
            percentValue = 5
        case percentButtonLabel[1]:
            tenPercent.backgroundColor = .clear
            fifteenPercent.backgroundColor = percentColor
            twentyPercent.backgroundColor = .clear
            percentValue = 10
        default:
            tenPercent.backgroundColor = .clear
            fifteenPercent.backgroundColor = .clear
            twentyPercent.backgroundColor = percentColor
            percentValue = 15
        }
    }
    
    mutating func getStepperValue(_ sender: Double, label: UILabel) {
        stepperValue = Int(sender)
        label.text = "\(stepperValue ?? 0)"
    }
    
    func getResutl( text: UITextField, percent: Int, stepper: Int) -> Double {
        let textValue = Double(text.text ?? "0") ?? 0
        let stepperRes = Double(stepper)
        let percentRes = Double(percent)
        let result = (textValue * (1 + percentRes / 100)) / stepperRes 
        return result
    }
    
    func getResultExplanation(totalPersons: Int, tipsPercent: Int) -> String {
        let result = "Split between \(totalPersons) person, with \(tipsPercent)% tips"
        return result
    }
}
