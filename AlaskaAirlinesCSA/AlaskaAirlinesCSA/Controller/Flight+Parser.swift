//
//  Flight+Parser.swift
//  AlaskaAirlinesCSA
//
//  Created by MCS Devices on 11/17/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
extension Flight{
    static func flightParser(jsonData: [[String: Any]]) -> [Flight]{
        var flights: [Flight] = []
        let dateFormatter = DateFormatter()
        jsonData.forEach {
            let id = $0[Constants.flightID] as! String
            let origin = $0[Constants.Orig] as! String
            let destination = $0[Constants.Dest] as! String
            let UTCOffset = $0[Constants.UTCDestinationOffset] as! String
            let schedArrivalTime = $0[Constants.SchedArrTime] as! String
            dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
            dateFormatter.timeZone = TimeZone(identifier: "UTC")
            let estimatedArrivalTime = $0[Constants.EstArrTime] as! String
            //dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
            dateFormatter.timeZone = TimeZone.current
            let schedArrivalDate = dateFormatter.date(from: schedArrivalTime)!
            let estimatedDate = dateFormatter.date(from: estimatedArrivalTime)!
            flights.append(Flight(flightId: id, originCity: origin, destinationCity: destination, schedArrivalTime: schedArrivalDate, estimatedArrivalTime: estimatedDate, UTCDestinationOffset: UTCOffset))
        }
        return flights.sorted()
    }
}
