//
//  ViewController.swift
//  Age of Laika
//
//  Created by Alex Meyers on 1/7/15.
//  Copyright (c) 2015 alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    
    
    @IBOutlet weak var humanyearsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onConvertDogYearsPress(sender: UIButton) {
        dogYearsLabel.hidden = false
        let dogYearsConversion = 7
        var dogYearsInteger:Int = humanyearsTextField.text.toInt()! * dogYearsConversion
        dogYearsLabel.text = "\(dogYearsInteger)" + " dog years"
        humanyearsTextField.text = ""
        humanyearsTextField.resignFirstResponder()
    }

    @IBAction func onNewConvertDogYearsPress(sender: UIButton) {
        let input = Double((humanyearsTextField.text as NSString).doubleValue)
        var realDogYearsConversion:Double
        if input <= 2 {
            realDogYearsConversion = input * 10.5
        } else {
            realDogYearsConversion = (10.5 * 2) + ((input-2)*4.0)
        }
        dogYearsLabel.text = "\(realDogYearsConversion)" + " dog years"
        humanyearsTextField.text = ""
        humanyearsTextField.resignFirstResponder()
    }
}

