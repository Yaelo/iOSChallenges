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
    static let ReservationSegue = "ReservationSegue"
    static let ReservationTableViewCell = "ReservationTableViewCell"
    static let ReservationViewController = "ReservationViewController"
    static let ScheduleViewController = "ScheduleViewController"
    
    static let SwedishMassage = "Swedish Massage"
    static let DeepTissueMassage = "Deep Tissue Massage"
    static let SportMassage = "Sport Massage"
    static let Reflexologi = "Reflexologi"
    static let TriggerPointTherapy = "Trigger Point Therapy"
    
    static let avaliableServicesData = [ServicesData.init(service: Services.SwedishMassage, time: "1H", price: 120, description: "Swedish massage is the most common and best-known type of massage in the West.", imageName: Constants.SwedishMassage), ServicesData.init(service: Services.DeepTissueMassage, time: "1H", price: 50, description: "Deep tissue massage is aimed at the deeper tissue structures of the muscle and fascia, also called connective tissue",imageName: Constants.DeepTissueMassage), ServicesData.init(service: Services.SportMassage, time: "1H", price: 100, description: "Is a form of bodywork geared toward participants in athletics. It is used to help prevent injuries, to prepare the body for athletic activity and maintain it in optimal condition, and to help athletes recover from workouts and injuries.",imageName: Constants.SportMassage), ServicesData.init(service: Services.Reflexologi, time: "1H", price: 120, description: "Is an alternative medicine involving application of pressure to the feet and hands with specific thumb, finger, and hand techniques without the use of oil or lotion.",imageName: Constants.Reflexologi), ServicesData.init(service: Services.TriggerPointTherapy, time: "1H", price: 130, description: "are described as hyperirritable spots in the fascia surrounding skeletal muscle. They are associated with palpable nodules in taut bands of muscle fibers.",imageName: Constants.TriggerPointTherapy)]
}

