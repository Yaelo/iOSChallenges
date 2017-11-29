//
//  Flight+Parser.swift
//  AlaskaAirlinesCSA
//
//  Created by MCS Devices on 11/17/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
extension Flight{
    static func flightParser(jsonData: [[String: Any]], dest: String) -> [Flight]{
        var flights: [Flight] = []
        let dateFormatter = DateFormatter()
        jsonData.forEach {
            let destination = $0[Constants.Dest] as! String
            if destination.uppercased() == dest.uppercased() {
                let id = $0[Constants.flightID] as! String
                let origin = $0[Constants.Orig] as! String
                let UTCOffset = $0[Constants.UTCDestinationOffset] as! String
                let schedArrivalTime = $0[Constants.SchedArrTime] as! String
                let estimatedArrivalTime = $0[Constants.EstArrTime] as! String
                let schedArrivalDate = getLocalFromUTCFromString(date: schedArrivalTime)!
                let estimatedDate = getLocalFromUTCFromString(date: estimatedArrivalTime)!
                flights.append(Flight(flightId: id, originCity: origin, destinationCity: destination, schedArrivalTime: schedArrivalDate, estimatedArrivalTime: estimatedDate, UTCDestinationOffset: UTCOffset))
            }
        }
        return flights.sorted()
    }
    static func getDateFromString(date: String) -> Date?{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"
        dateFormatter.timeZone = TimeZone(abbreviation: "UTC")
        let myDate = dateFormatter.date(from: date)
        return myDate
    }
}
