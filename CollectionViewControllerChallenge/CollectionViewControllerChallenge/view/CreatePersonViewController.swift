//
//  CreatePersonViewController.swift
//  CollectionViewControllerChallenge
//
//  Created by MCS Devices on 11/1/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class CreatePersonViewController: UIViewController {
    @IBOutlet weak var firstTxt: UITextField!
    @IBOutlet weak var middleTxt: UITextField!
    @IBOutlet weak var lastTxt: UITextField!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var myStepper: UIStepper!
    @IBOutlet weak var SubmitButton: UIButton!
    
    var person: Person?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ageLabel.text = "1"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ageChanged(_ sender: Any) {
        ageLabel.text = "\(Int(myStepper.value))"
    }
    
    @IBAction func Submit(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if let first = firstTxt.text, let middle = middleTxt.text, let last = lastTxt.text{
            person = Person(first: first, middle: middle, last: last, age: Int(myStepper.value))
            return true
        }
        return false
    }
}
