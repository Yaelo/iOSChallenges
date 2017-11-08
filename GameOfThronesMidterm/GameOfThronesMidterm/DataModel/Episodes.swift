//
//  Episodes.swift
//  GameOfThronesMidterm
//
//  Created by MCS Devices on 10/25/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
class Episode{
    var title: String?
    var year: String?
    var rated: String?
    var released: String?
    var season: String?
    var episode: String?
    var runtime: String?
    var genre: String?
    var director: String?
    var writer: String?
    var actors: String?
    var plot: String?
    var language: String?
    var country: String?
    var awards: String?
    var poster: String?
    var ratings: Dictionary<String, String>?
    var metaScore: String?
    var imdbRating: String?
    var imdbVotes: String?
    var imdbID: String?
    var seriesID: String?
    var type: String?
    
    init(){}
    
    init(title: String, released: String, episode: String,imdbRating: String, ID: String) {
        self.title = title
        self.released = released
        self.episode = episode
        self.imdbRating = imdbRating
        self.imdbID = ID
    }
    init(title: String, year: String, rated: String, released: String, season: String, episode: String, runtime: String, genre: String, director: String, writer: String, actors: String, plot: String, language: String, country: String, awards: String, metaScore: String, rating: String, votes:String, ID: String, seriesID: String, type: String){
        self.title = title
        self.year = year
        self.rated = rated
        self.released = released
        self.season = season
        self.episode = episode
        self.runtime = runtime
        self.genre = genre
        self.director = director
        self.writer = writer
        self.actors = actors
        self.plot = plot
        self.language = language
        self.country = country
        self.awards = awards
        self.metaScore = metaScore
        self.imdbRating = rating
        self.imdbVotes = votes
        self.imdbID = ID
        self.seriesID = seriesID
        self.type = type
    }
}
extension Episode: Equatable {
    static func ==(lhs: Episode, rhs: Episode) -> Bool {
        return (lhs.season!, lhs.episode!) == (rhs.season!, rhs.episode!)
    }
}
extension Episode: Comparable{
    static func <(lhs: Episode, rhs: Episode) -> Bool {
        return (lhs.season!, lhs.episode!) < (rhs.season!, rhs.episode!)
}
    
    
}
