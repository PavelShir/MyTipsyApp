//
//  ResultViewController.swift
//  MyTipsyApp
//
//  Created by Павел Широкий on 05.03.2024.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var totalPerPersonLbl: UILabel!
    @IBOutlet var resultLabel: UILabel!
    
    var resultValue: Double?
    var resultExplanation: String?
   
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalPerPersonLbl.text = String(format: "%.2f", resultValue ?? 0)
        resultLabel.text = resultExplanation ?? "All for one! :)"
    }
    
    @IBAction func RecalculateButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
