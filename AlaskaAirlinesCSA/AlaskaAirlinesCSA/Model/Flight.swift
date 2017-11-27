//
//  Flight.swift
//  AlaskaAirlinesCSA
//
//  Created by MCS Devices on 11/17/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
class Flight {
    var flightId: String
    var originCity: String
    var destinationCity: String
    var schedArrivalTime: Date
    var estimatedArrivalTime: Date
    var UTCDestinationOffset: String
    
    init(flightId: String, originCity: String, destinationCity: String, schedArrivalTime: Date, estimatedArrivalTime: Date, UTCDestinationOffset: String ) {
        self.flightId = flightId
        self.originCity = originCity
        self.destinationCity = destinationCity
        self.schedArrivalTime = schedArrivalTime
        self.estimatedArrivalTime = estimatedArrivalTime
        self.UTCDestinationOffset = UTCDestinationOffset
    }
}
extension Flight: Comparable{
    static func <(lhs: Flight, rhs: Flight) -> Bool {
        return (lhs.estimatedArrivalTime < rhs.estimatedArrivalTime)
    }
    
    static func ==(lhs: Flight, rhs: Flight) -> Bool {
        return (lhs.flightId == rhs.flightId)
    }
    
    
}
