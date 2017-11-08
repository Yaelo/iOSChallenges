//
//  DataPersistanceManager.swift
//  GameOfThronesMidterm
//
//  Created by MCS Devices on 10/27/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
import CoreData
import UIKit
struct dataConstants{
    static let EpisodeDataEntity = "EpisodeDataModel"
    static let episodeID = "id"
    static let actors = "actors"
    static let awards = "awards"
    static let country = "country"
    static let director = "director"
    static let episode = "episode"
    static let genre = "genre"
    static let rating = "imdbRating"
    static let votes = "imdbVotes"
    static let language = "language"
    static let metascore = "metascore"
    static let plot = "plot"
    static let poster = "poster"
    static let rated = "rated"
    static let released = "released"
    static let runtime = "runtime"
    static let season = "season"
    static let title = "title"
    static let writer = "writer"
    static let year = "year"
}

class DataPersistanceManager{
    func getContext() -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    func storeEpisode(episode: Episode){
        guard let episodeID = episode.imdbID else{
            return
        }
        if getEpisode(episodeID: episodeID) == nil{
            let context = getContext()
            guard let entity = NSEntityDescription.entity(forEntityName: dataConstants.EpisodeDataEntity, in: context) else{return}
            let episodeData = NSManagedObject(entity: entity, insertInto: context)
            episodeData.setValue(episode.imdbID, forKey: dataConstants.episodeID)
            episodeData.setValue(episode.actors, forKey: dataConstants.actors)
            episodeData.setValue(episode.awards, forKey: dataConstants.awards)
            episodeData.setValue(episode.country, forKey: dataConstants.country)
            episodeData.setValue(episode.director, forKey: dataConstants.director)
            episodeData.setValue(episode.episode, forKey: dataConstants.episode)
            episodeData.setValue(episode.genre, forKey: dataConstants.genre)
            episodeData.setValue(episode.imdbRating, forKey: dataConstants.rating)
            episodeData.setValue(episode.imdbVotes, forKey: dataConstants.votes)
            episodeData.setValue(episode.language, forKey: dataConstants.language)
            episodeData.setValue(episode.metaScore, forKey: dataConstants.metascore)
            episodeData.setValue(episode.plot, forKey: dataConstants.plot)
            episodeData.setValue(episode.poster, forKey: dataConstants.poster)
            episodeData.setValue(episode.rated, forKey: dataConstants.rated)
            episodeData.setValue(episode.released, forKey: dataConstants.released)
            episodeData.setValue(episode.runtime, forKey: dataConstants.runtime)
            episodeData.setValue(episode.season, forKey: dataConstants.season)
            episodeData.setValue(episode.title, forKey: dataConstants.title)
            episodeData.setValue(episode.writer, forKey: dataConstants.writer)
            episodeData.setValue(episode.year, forKey: dataConstants.year)
            do{
                try context.save()
                print("Succesfully saved the episode: \(episodeID)")
            }catch{
                print(error.localizedDescription)
            }
        } else{
            print("Previously saved")
        }
    }
    
    func getEpisode(episodeID: String) -> Episode?{
        var episode: Episode?
        let context = getContext()
        let fetchRequest: NSFetchRequest<EpisodeDataModel> = EpisodeDataModel.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "\(dataConstants.episodeID) = %@", episodeID)
        do{
            let searchResult = try context.fetch(fetchRequest)
            for foundEpisode in searchResult as [NSManagedObject]{
                episode = Episode()
                episode?.imdbID = foundEpisode.value(forKey: dataConstants.episodeID) as? String
                episode?.actors = foundEpisode.value(forKey: dataConstants.actors) as? String
                episode?.awards = foundEpisode.value(forKey: dataConstants.awards) as? String
                episode?.country = foundEpisode.value(forKey: dataConstants.country) as? String
                episode?.director = foundEpisode.value(forKey: dataConstants.director) as? String
                episode?.episode = foundEpisode.value(forKey: dataConstants.episode) as? String
                episode?.genre = foundEpisode.value(forKey: dataConstants.genre) as? String
                episode?.imdbRating = foundEpisode.value(forKey: dataConstants.rating) as? String
                episode?.imdbVotes = foundEpisode.value(forKey: dataConstants.votes) as? String
                episode?.language = foundEpisode.value(forKey: dataConstants.language) as? String
                episode?.metaScore = foundEpisode.value(forKey: dataConstants.metascore) as? String
                episode?.plot = foundEpisode.value(forKey: dataConstants.plot) as? String
                episode?.poster = foundEpisode.value(forKey: dataConstants.poster) as? String
                episode?.rated = foundEpisode.value(forKey: dataConstants.rated) as? String
                episode?.released = foundEpisode.value(forKey: dataConstants.released) as? String
                episode?.runtime = foundEpisode.value(forKey: dataConstants.runtime) as? String
                episode?.season = foundEpisode.value(forKey: dataConstants.season) as? String
                episode?.title = foundEpisode.value(forKey: dataConstants.title) as? String
                episode?.writer = foundEpisode.value(forKey: dataConstants.writer) as? String
                episode?.year = foundEpisode.value(forKey: dataConstants.year) as? String
            }
        } catch{
            print(error.localizedDescription)
        }
        return episode
    }
    
    func getAllEpisodes() -> [Episode]{
        let context = getContext()
        let fetchRequest: NSFetchRequest<EpisodeDataModel> = EpisodeDataModel.fetchRequest()
        var episodes = [Episode]()
        do{
            let searchResults = try context.fetch(fetchRequest)
            for foundEpisode in searchResults as [NSManagedObject]{
                let episode = Episode()
                episode.imdbID = foundEpisode.value(forKey: dataConstants.episodeID) as? String
                episode.actors = foundEpisode.value(forKey: dataConstants.actors) as? String
                episode.awards = foundEpisode.value(forKey: dataConstants.awards) as? String
                episode.country = foundEpisode.value(forKey: dataConstants.country) as? String
                episode.director = foundEpisode.value(forKey: dataConstants.director) as? String
                episode.episode = foundEpisode.value(forKey: dataConstants.episode) as? String
                episode.genre = foundEpisode.value(forKey: dataConstants.genre) as? String
                episode.imdbRating = foundEpisode.value(forKey: dataConstants.rating) as? String
                episode.imdbVotes = foundEpisode.value(forKey: dataConstants.votes) as? String
                episode.language = foundEpisode.value(forKey: dataConstants.language) as? String
                episode.metaScore = foundEpisode.value(forKey: dataConstants.metascore) as? String
                episode.plot = foundEpisode.value(forKey: dataConstants.plot) as? String
                episode.poster = foundEpisode.value(forKey: dataConstants.poster) as? String
                episode.rated = foundEpisode.value(forKey: dataConstants.rated) as? String
                episode.released = foundEpisode.value(forKey: dataConstants.released) as? String
                episode.runtime = foundEpisode.value(forKey: dataConstants.runtime) as? String
                episode.season = foundEpisode.value(forKey: dataConstants.season) as? String
                episode.title = foundEpisode.value(forKey: dataConstants.title) as? String
                episode.writer = foundEpisode.value(forKey: dataConstants.writer) as? String
                episode.year = foundEpisode.value(forKey: dataConstants.year) as? String
                
                episodes.append(episode)
                episodes.sort()
                //print("episode: \(episode.imdbID ?? "x")")
                }
            
        } catch{
            print(error.localizedDescription)
        }
        return episodes
    }
    
    func deleteEpisode(episodeID: String){
        let context = getContext()
        let fetchRequest: NSFetchRequest<EpisodeDataModel> = EpisodeDataModel.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "\(dataConstants.episodeID) = %@",episodeID)
        do{
            let searchResults = try context.fetch(fetchRequest)
            for foundEpisode in searchResults as [NSManagedObject]{
                context.delete(foundEpisode)
            }
        } catch{
            print(error.localizedDescription)
        }
        do{
            try context.save()
            print("Episode deleted")
        }catch{
            print("Could not delete the episode")
        }
    }
    func dropAll(){
        let context = getContext()
        let fetchRequest: NSFetchRequest<EpisodeDataModel> = EpisodeDataModel.fetchRequest()
        do{
            let searchResults = try context.fetch(fetchRequest)
            for foundEpisode in searchResults as [NSManagedObject]{
                context.delete(foundEpisode)
            }
        } catch{
            print(error.localizedDescription)
        }
        do{
            try context.save()
            print("All eleted")
        }catch{
            print("Could not delete the episode")
        }
    }
}
