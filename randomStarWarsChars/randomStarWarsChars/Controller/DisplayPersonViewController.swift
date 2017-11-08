//
//  DisplayPersonViewController.swift
//  randomStarWarsChars
//
//  Created by MCS Devices on 10/20/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class DisplayPersonViewController: UIViewController {

    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var heightTxt: UITextField!
    @IBOutlet weak var massTxt: UITextField!
    @IBOutlet weak var hairTxt: UITextField!
    @IBOutlet weak var skinTxt: UITextField!
    @IBOutlet weak var eyeTxt: UITextField!
    @IBOutlet weak var birthTxt: UITextField!
    @IBOutlet weak var genderTxt: UITextField!
    @IBOutlet weak var homeTxt: UITextField!
    @IBOutlet weak var speciesTxt: UITextField!
    
    
    var currentPerson: Person?
    var data: String?
    override func viewDidLoad() {
        super.viewDidLoad()

        if  currentPerson != nil {
            navigationItem.title = currentPerson?.name
            nameTxt.text = currentPerson!.name ?? "name"
            heightTxt.text = currentPerson!.height ?? "height"
            massTxt.text = currentPerson!.mass ?? "mass"
            hairTxt.text = currentPerson!.hairColor ?? "Hair"
            skinTxt.text = currentPerson!.skinColor ?? "Skin"
            eyeTxt.text = currentPerson!.eyeColor ?? "Eye"
            birthTxt.text = currentPerson!.birthYear ?? "Birth"
            genderTxt.text = currentPerson!.gender ?? "Gender"
            homeTxt.text = currentPerson!.homeworld ?? "Home"
            speciesTxt.text = currentPerson!.specie ?? "specie"
            if let specie = currentPerson!.specie, let myImage = UIImage(named: "\(specie)"){
                personImage.image = myImage
            } else if let text = currentPerson!.specie{
                let attributes = [
                    NSAttributedStringKey.foregroundColor: UIColor.yellow,
                    NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18)
                ]
                let textSize = text.size(withAttributes: attributes)
                
                let renderer = UIGraphicsImageRenderer(size: textSize)
                personImage.image = renderer.image(actions: { context in
                    text.draw(at: CGPoint.zero, withAttributes: attributes)
                })
                
            }
        } else{
            navigationItem.title = "Details"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
