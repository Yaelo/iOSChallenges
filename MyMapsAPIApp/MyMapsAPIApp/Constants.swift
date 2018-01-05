//
//  Constants.swift
//  MyMapsAPIApp
//
//  Created by MCS Devices on 1/4/18.
//  Copyright © 2018 MCS Devices. All rights reserved.
//

import Foundation
struct Constants{
    private static let pkey = "AIzaSyDQIG-qfU9VWdLBjh1UKjnHaO5oyjmUzYE"
    static let sitesURL = "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location="
    static let radiusAndKey = "&radius=700&key="+pkey
    
    static let placeURL = "https://maps.googleapis.com/maps/api/place/details/json?placeid="
    static let key = "&key="+pkey
}
