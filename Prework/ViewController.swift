//
//  ViewController.swift
//  Prework
//
//  Created by 周宇振 on 2021/9/7.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipPercentageLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmountTextField.becomeFirstResponder()
        // Sets the title in the Navigation Bar
        self.title = "Tip Calculator"
        // Do any additional setup after loading the view.
    }

    func calculateTipSlider(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
//        let tipPercentages = [0.15, 0.18, 0.2]
//        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let tipPercentage = Double(tipSlider.value)/100.0
        let tip = bill * tipPercentage
        let total = bill + tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    func calculateTipSelector(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
//        let tip = bill * tipPercentages
        let total = bill + tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func tipSelector(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
//        let tip = bill * tipPercentages
        let total = bill + tip
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func tipSlider(_ sender: Any) {
        tipPercentageLabel.text = String(format: "Tip: %02d%%", Int(tipSlider.value))
        calculateTipSlider((Any).self)
    }
    
}

