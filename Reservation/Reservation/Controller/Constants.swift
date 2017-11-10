//
//  Constants.swift
//  Reservation
//
//  Created by MCS Devices on 11/8/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
struct Constants {
    static let scheduleSegue = "scheduleSegue"
    static let SwedishMassage = "Swedish Massage"
    static let DeepTissueMassage = "Deep Tissue Massage"
    static let SportMassage = "Sport Massage"
    static let Reflexologi = "Reflexologi"
    static let TriggerPointTherapy = "Trigger Point Therapy"
}
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
