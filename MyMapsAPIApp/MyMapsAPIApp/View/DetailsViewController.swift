//
//  DetailsViewController.swift
//  MyMapsAPIApp
//
//  Created by MCS Devices on 1/5/18.
//  Copyright © 2018 MCS Devices. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, NetworkManagerDelegateInfo {
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var addressLbl: UILabel!
    @IBOutlet weak var phoneLbl: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    
    @IBOutlet weak var infoLbl: UILabel!
    var placeId: String?
    var networkRequest: [Any?] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        if placeId != nil{
            print("entra")
            let networkManager = NetworkManager()
            networkManager.delegateInfo = self
            networkRequest.append(networkManager)
            networkManager.getInfo(placeId: placeId!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didGetInfo(info: Place?) {
        print("get it")
        if let myPlace = info {
            nameLbl.text = myPlace.name
            addressLbl.text = myPlace.address
            phoneLbl.text = myPlace.phoneNumber
            ratingLbl.text = "\(myPlace.rating)"
        }
        
    }

}
