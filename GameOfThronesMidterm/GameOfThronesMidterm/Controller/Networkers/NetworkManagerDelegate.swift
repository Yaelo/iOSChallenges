//
//  NetworkManagerDelegate.swift
//  GameOfThronesMidterm
//
//  Created by MCS Devices on 10/25/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
import UIKit
protocol NetworkManagerDelegate: class{
    func didDownloadParsedSeasonNumber(downloadedNumber: Int)
    func didDownloadParsedSeason(downloadedSeason: Season)
}
protocol NetworkManagerDelegateEp: class{
    func didDownloadParsedEpisode(downloadedEpisode:Episode)
    func didDownloadPoster(image: UIImage)
}
