//
//  Season+Parser.swift
//  GameOfThronesMidterm
//
//  Created by MCS Devices on 10/26/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
extension Season{
    static func seasonsNumberParser(downloadedData: [String: Any]) -> Int{
        let seasonNumber = downloadedData[constants.totalSeasonsID] as? String
        return Int(seasonNumber!)!
    }
    static func seasonsSeasonParser(downloadedData: [String: Any]) -> Season{
        let currentSeason = Season()
        currentSeason.title = downloadedData[constants.titleID] as? String
        currentSeason.seasonNumber = downloadedData[constants.seasonID] as? String
        //currentSeason.episodes = []
        if let episodes = downloadedData[constants.episodesID] as? [[String: Any]]{
            episodes.forEach {
                let episode = Episode()
                episode.title = $0[constants.titleID] as? String
                episode.released = $0[constants.releasedID] as? String
                episode.episode = $0[constants.episodeID] as? String
                episode.imdbRating = $0[constants.imdbRatingID] as? String
                episode.imdbID = $0[constants.imdbID] as? String
                currentSeason.episodes?.append(episode)
            }
        }
        return currentSeason
    }
}
