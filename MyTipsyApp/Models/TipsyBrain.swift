//
//  TipsyBrain.swift
//  MyTipsyApp
//
//  Created by Павел Широкий on 05.03.2024.
//

import UIKit

struct TipsyBrain {
    
    let percentColor = UIColor(red: 250/255, green: 163/255, blue: 0/255, alpha: 1)
    let percentButtonLabel = ["10 %", "15 %", "20 %"]
    
    
    func getColor(_ sender: String, tenPercent: UIButton, fifteenPercent: UIButton, twentyPercent: UIButton) {
        switch sender {
        case percentButtonLabel[0]:
            tenPercent.backgroundColor = percentColor
            fifteenPercent.backgroundColor = .clear
            twentyPercent.backgroundColor = .clear
        case percentButtonLabel[1]:
            tenPercent.backgroundColor = .clear
            fifteenPercent.backgroundColor = percentColor
            twentyPercent.backgroundColor = .clear
        default:
            tenPercent.backgroundColor = .clear
            fifteenPercent.backgroundColor = .clear
            twentyPercent.backgroundColor = percentColor
        }
    }
    
    
}
