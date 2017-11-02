//
//  CollectionViewCell.swift
//  CollectionViewControllerChallenge
//
//  Created by MCS Devices on 11/1/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var lastLabel: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    var person: Person?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func fillCell(person: Person){
        self.person = person
        firstLabel.text = person.first
        middleLabel.text = person.middle
        lastLabel.text = person.last
        stepper.value = Double(person.age)
        stepperChanged(nil)
    }
    
    @IBAction func stepperChanged(_ sender: Any?) {
        ageLabel.text = "\(Int(stepper.value))"
        person?.age = Int(stepper.value)
    }
}
