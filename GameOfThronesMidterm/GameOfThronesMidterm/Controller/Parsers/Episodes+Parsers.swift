//
//  Episodes+Parsers.swift
//  GameOfThronesMidterm
//
//  Created by MCS Devices on 10/26/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
extension Episode{
    static func episodeParser(jsonData: [String: Any]) -> Episode{
        let parsedEpisode = Episode()
        parsedEpisode.title = jsonData[constants.titleID] as? String
        parsedEpisode.year = jsonData[constants.yearID] as? String
        parsedEpisode.rated = jsonData[constants.ratedID] as? String
        parsedEpisode.released = jsonData[constants.releasedID] as? String
        parsedEpisode.season = jsonData[constants.seasonID] as? String
        parsedEpisode.episode = jsonData[constants.episodeID] as? String
        parsedEpisode.runtime = jsonData[constants.runtimeID] as? String
        parsedEpisode.genre = jsonData[constants.genreID] as? String
        parsedEpisode.director = jsonData[constants.directorID] as? String
        parsedEpisode.writer = jsonData[constants.writerID] as? String
        parsedEpisode.actors = jsonData[constants.actorsID] as? String
        parsedEpisode.plot = jsonData[constants.plotID] as? String
        parsedEpisode.language = jsonData[constants.languageID] as? String
        parsedEpisode.country = jsonData[constants.countryID] as? String
        parsedEpisode.awards = jsonData[constants.awardsID] as? String
        parsedEpisode.poster = jsonData[constants.posterID] as? String
        parsedEpisode.metaScore = jsonData[constants.metascoreID] as? String
        parsedEpisode.imdbRating = jsonData[constants.imdbRatingID] as? String
        parsedEpisode.imdbID = jsonData[constants.imdbID] as? String
        
        return parsedEpisode
    }
    
    static func episodeToJSON(episodeData: Episode) -> [String: Any]{
        var jsonData: [String: Any] = [:]
        jsonData[constants.titleID] = episodeData.title
        jsonData[constants.yearID] = episodeData.year
        jsonData[constants.ratedID] = episodeData.rated
        jsonData[constants.releasedID] = episodeData.released
        jsonData[constants.seasonID] = episodeData.season
        jsonData[constants.episodeID] = episodeData.episode
        jsonData[constants.runtimeID] = episodeData.runtime
        jsonData[constants.genreID] = episodeData.genre
        jsonData[constants.directorID] = episodeData.director
        jsonData[constants.writerID] = episodeData.writer
        jsonData[constants.actorsID] = episodeData.actors
        jsonData[constants.plotID] = episodeData.plot
        jsonData[constants.languageID] = episodeData.language
        jsonData[constants.countryID] = episodeData.country
        jsonData[constants.awardsID] = episodeData.awards
        jsonData[constants.posterID] = episodeData.poster
        jsonData[constants.metascoreID] = episodeData.metaScore
        jsonData[constants.imdbRatingID] = episodeData.imdbRating
        jsonData[constants.imdbID] = episodeData.imdbID
        //var temp = JSONSerialization.jsonObject(with: episodeData)
        return jsonData
    }
}
