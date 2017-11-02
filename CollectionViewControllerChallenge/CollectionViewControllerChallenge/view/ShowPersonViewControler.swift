//
//  ShowPersonViewControler.swift
//  CollectionViewControllerChallenge
//
//  Created by MCS Devices on 11/1/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class ShowPersonViewControler: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var middleLabel: UILabel!
    @IBOutlet weak var lasttLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    var person: Person?
    override func viewDidLoad() {
        super.viewDidLoad()
        if person != nil {
            firstLabel.text = person?.first
            middleLabel.text = person?.middle
            lasttLabel.text = person?.last
            ageLabel.text = "\(person?.age ?? 0)"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
