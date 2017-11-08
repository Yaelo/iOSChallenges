//
//  NetworkManagerDelegate.swift
//  randomStarWarsChars
//
//  Created by MCS Devices on 10/20/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
protocol NetworkManagerDelegate: class{
    func didDownloadParsedPostArray(downloadedPerson:Person)
    func didDownloadParsedSpecies(downloadedSpecies: [String])
}
