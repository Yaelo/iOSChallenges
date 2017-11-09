//
//  Reservation.swift
//  Reservation
//
//  Created by MCS Devices on 11/8/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
class Reservation {
    
    var date: Date
    var partySize: Int
    var service: String
    
    init (date: Date, partySize: Int, service: String){
        self.date = date
        self.partySize = partySize
        self.service = service
    }
}
