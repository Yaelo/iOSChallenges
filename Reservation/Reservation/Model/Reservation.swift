//
//  Reservation.swift
//  Reservation
//
//  Created by MCS Devices on 11/8/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
class reservation {
    
    var date: Date
    var partySize: Int
    
    init (date: Date, partySize: Int){
        self.date = date
        self.partySize = partySize
    }
}
