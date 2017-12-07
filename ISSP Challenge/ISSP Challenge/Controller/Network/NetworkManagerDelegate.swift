//
//  NetworkManagerDelegate.swift
//  ISSP Challenge
//
//  Created by MCS Devices on 12/7/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
protocol NetworkManagerDelegate: class {
    func didDownloadPass(downloadedPasses: [Pass])
}
