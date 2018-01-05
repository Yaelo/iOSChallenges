//
//  NetworkManagerDelegate.swift
//  MyMapsAPIApp
//
//  Created by MCS Devices on 1/4/18.
//  Copyright © 2018 MCS Devices. All rights reserved.
//

import Foundation
protocol NetworkManagerDelegatePlaces: class {
    func didGetPlaces(info: [Place])
}
protocol NetworkManagerDelegateInfo: class {
    func didGetInfo(info: Place?)
}
