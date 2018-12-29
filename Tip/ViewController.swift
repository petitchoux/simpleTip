//
//  ViewController.swift
//  Tip
//
//  Created by Joyce Huang on 12/27/18.
//  Copyright © 2018 Joyce Huang. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var splitSlider: UISlider!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var splitLabel: UILabel!
    @IBOutlet weak var eachLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billField.becomeFirstResponder()
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(sender: Any) {
        let tipPercent = Double((round(tipSlider.value) / 100))
        let split = Double(round((splitSlider.value)))
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * tipPercent
        let total = bill + tip
        let each = total / split
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        eachLabel.text = String(format: "$%.2f", each)
    }
    
    @IBAction func tipSliderValueChange(sender: Any) {
        tipPercentLabel.text = String(format: "%02d%%", Int(round((tipSlider.value))))
    }
    
    @IBAction func splitSliderChange(sender: Any) {
        splitLabel.text = "\(Int(round(splitSlider.value)))"
    }
    
}
