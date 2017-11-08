//
//  Season.swift
//  GameOfThronesMidterm
//
//  Created by MCS Devices on 10/26/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
class Season{
    
    var title: String?
    var seasonNumber: String?
    var episodes: [Episode]?
    
    init(){
        episodes = []
    }
    
    init(title: String, season: String, episodes: [Episode]){
        self.title = title
        self.seasonNumber = season
        self.episodes = episodes
    }
}
