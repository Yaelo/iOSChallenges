//
//  Place+Parser.swift
//  MyMapsAPIApp
//
//  Created by MCS Devices on 1/5/18.
//  Copyright © 2018 MCS Devices. All rights reserved.
//

import Foundation
extension Place{
    static func parsePlaces(jsonData: [String: Any]) -> [Place]{
        var places: [Place] = []
        guard let results = jsonData[PlacesKeys.results] as? [[String: Any]] else {return places}
        for place in results{
            let geometry = place[PlacesKeys.geometry] as! [String: Any]
            let location = geometry[PlacesKeys.location] as! [String: Any]
            let lat = location[PlacesKeys.lat] as! Double
            let long = location[PlacesKeys.long] as! Double
            let name = place[PlacesKeys.name] as! String
            let id = place[PlacesKeys.id] as! String
            let placeId = place[PlacesKeys.placeId] as! String
            places.append(Place(name: name, lat: lat, long: long, id: id, placeId: placeId))
        }
        return places
    }
    static func parseInfoPlace(jsonData: [String: Any]) -> Place?{
        guard let result = jsonData[PlacesKeys.result] as? [String: Any] else {return nil}
        let address = result[PlacesKeys.address] as! String
        let geometry = result[PlacesKeys.geometry] as! [String: Any]
        let location = geometry[PlacesKeys.location] as! [String: Any]
        let lat = location[PlacesKeys.lat] as! Double
        let long = location[PlacesKeys.long] as! Double
        let name = result[PlacesKeys.name] as! String
        let id = result[PlacesKeys.id] as! String
        let placeId = result[PlacesKeys.placeId] as! String
        let phone = result[PlacesKeys.phoneNumber] as! String
        let rating = result[PlacesKeys.rating] as! Float
        return Place(name: name, lat: lat, long: long, id: id, placeId: placeId, add: address, phone: phone, rate: rating)
    }
}
struct PlacesKeys{
    static let results = "results"
    static let result = "result"
    static let geometry = "geometry"
    static let location = "location"
    static let lat = "lat"
    static let long = "lng"
    static let id = "id"
    static let placeId = "place_id"
    static let name = "name"
    static let address = "formatted_address"
    static let phoneNumber = "formatted_phone_number"
    static let rating = "rating"
}
