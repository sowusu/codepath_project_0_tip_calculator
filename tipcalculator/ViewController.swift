//
//  ViewController.swift
//  tipcalculator
//
//  Created by Nana Kwame Owusu on 12/4/15.
//  Copyright © 2015 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var billField: UITextField!
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        tipLabel.text = "$0.00";
        totalLabel.text = "$0.00";
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true);
    }

    @IBAction func onEditingChanged(sender: AnyObject) {
        let tipPercentages = [0.18, 0.2, 0.22];
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex];
        
        let billAmount = NSString(string: billField.text!).doubleValue;
        let tip = billAmount * tipPercentage;
        let total = billAmount + tip;
        
        tipLabel.text = String(format: "$%.2f", tip);
        totalLabel.text = String(format: "$%.2f", total);
    }
    
    
    
}

