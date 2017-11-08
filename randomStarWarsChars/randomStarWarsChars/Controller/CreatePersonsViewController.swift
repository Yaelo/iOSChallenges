//
//  CreatePersonsViewController.swift
//  randomStarWarsChars
//
//  Created by MCS Devices on 10/20/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class CreatePersonsViewController: UIViewController {
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var heighTxt: UITextField!
    @IBOutlet weak var massTxt: UITextField!
    @IBOutlet weak var hairTxt: UITextField!
    @IBOutlet weak var skinColorTxt: UITextField!
    @IBOutlet weak var eyeColorTxt: UITextField!
    @IBOutlet weak var birthYear: UITextField!
    @IBOutlet weak var genderTxt: UITextField!
    @IBOutlet weak var homeworldTxt: UITextField!
    @IBOutlet weak var speciesTxt: UITextField!
    
    @IBOutlet weak var submitButton: UIButton!
    
    var thisName: String?
    var thisHeigh: String?
    var thisMass: String?
    var thisHairColor: String?
    var thisSkinColor: String?
    var thisEyeColor: String?
    var thisBirthYear: String?
    var thisGender: String?
    var thisHomeworld: String?
    var thisSpecies: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let name = nameTxt.text, let height = heighTxt.text, let mass = massTxt.text, let hair = hairTxt.text, let skin = skinColorTxt.text, let eye = eyeColorTxt.text, let birth = birthYear.text, let gender = genderTxt.text, let home = homeworldTxt.text, let specie = speciesTxt.text{
            thisName = name
            thisHeigh = height
            thisMass = mass
            thisHairColor = hair
            thisSkinColor = skin
            thisEyeColor = eye
            thisBirthYear = birth
            thisGender = gender
            thisHomeworld = home
            thisSpecies = specie
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
