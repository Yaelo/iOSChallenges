//
//  NetworkManagerDelegate.swift
//  AlaskaAirlinesCSA
//
//  Created by MCS Devices on 11/17/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
protocol NetworkManagerDelegate: class {
    func didDownloadedFlights(DownloadedFlights: [Flight])
}
