//
//  ViewController.swift
//  Ti
//
//  Created by Ezo on 12/10/16.
//  Copyright © 2016 Ezo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipAmount: UILabel!
    @IBOutlet weak var totalAmount: UILabel!
    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var RateSelected: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ElseTapped(_ sender: Any) {view.endEditing(true)
    }
    
    
    @IBAction func Calculate(_ sender: Any) {
        
        let rate=[0.15, 0.18, 0.20]
        let bill = Double(billAmount.text!) ?? 0
        let tip = bill * rate[RateSelected.selectedSegmentIndex]
        let total = bill + tip
        tipAmount.text=String(format:"$%.2f",tip)
        totalAmount.text=String(format:"$%.2f",total)
    }
  
    @IBAction func rateToggled(_ sender: Any) {
        let rate=[0.15, 0.18, 0.20]
        let bill = Double(billAmount.text!) ?? 0
        let tip = bill * rate[RateSelected.selectedSegmentIndex]
        let total = bill + tip
        tipAmount.text=String(format:"$%.2f",tip)
        totalAmount.text=String(format:"$%.2f",total)
    }

    

}

