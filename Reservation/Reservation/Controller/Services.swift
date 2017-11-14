//
//  Services.swift
//  Reservation
//
//  Created by MCS Devices on 11/12/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
enum Services: String{
    case SwedishMassage = "Swedish Massage"
    case DeepTissueMassage = "Deep Tissue Massage"
    case SportMassage = "Sport Massage"
    case Reflexologi = "Reflexologi"
    case TriggerPointTherapy = "Trigger Point Therapy"
}
struct ServicesData {
    let service: Services
    let time: String
    let price: Int
    let description: String
    let imageName: String
}
struct ServicesOfferts{
    let service: Services
    let offert: String
}
