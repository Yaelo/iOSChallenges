//
//  Place.swift
//  MyMapsAPIApp
//
//  Created by MCS Devices on 1/5/18.
//  Copyright © 2018 MCS Devices. All rights reserved.
//

import Foundation
class Place{
    let name: String
    let lat: Double
    let long: Double
    let id: String
    let placeId: String
    let address: String
    let phoneNumber: String
    let rating: Float
    
    init(name: String, lat: Double, long: Double, id: String, placeId: String){
        self.name = name
        self.lat = lat
        self.long = long
        self.id = id
        self.placeId = placeId
        self.address = ""
        self.phoneNumber = ""
        self.rating = 1.0
    }
    init(name: String, lat: Double, long: Double, id: String, placeId: String, add: String, phone: String, rate: Float){
        self.name = name
        self.lat = lat
        self.long = long
        self.id = id
        self.placeId = placeId
        self.address = add
        self.phoneNumber = phone
        self.rating = rate
    }
}
