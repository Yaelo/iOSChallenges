//
//  NetworkManager.swift
//  GameOfThronesMidterm
//
//  Created by MCS Devices on 10/25/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
import UIKit
final class NetworkManager {
    
    weak var delegate: NetworkManagerDelegate?
    weak var delegateEp: NetworkManagerDelegateEp?
    
    func getSeasonNumber(){
        if let url = URL(string: "\(constants.GoTURL)"){
            let task = URLSession.shared.dataTask(with: url){[weak self](data, response, error) in
                if error != nil{
                    print(error as Any)
                } else{
                    do{
                        if let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String: Any]{
                            DispatchQueue.main.async {
                                let totalSeasons = Season.seasonsNumberParser(downloadedData: jsonResponse)
                                self?.getSeasonData(totalSeasons: totalSeasons)
                                self?.delegate?.didDownloadParsedSeasonNumber(downloadedNumber: totalSeasons)
                            }
                        }
                    }catch{
                        print(error.localizedDescription)
                    }
                }
            }
            task.resume()
        }
    }
    func getSeasonData(totalSeasons: Int){
        for i in 0..<totalSeasons{
            if let url = URL(string: "\(constants.seasonBaseURL)\(i+1)"){
                let task = URLSession.shared.dataTask(with: url) { [weak self](data,response, error) in
                    if error != nil{
                        print(error as Any)
                    } else{
                        do{
                            if let jsonResponseArray = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String: Any]{
                                DispatchQueue.main.async {
                                    let seasonData = Season.seasonsSeasonParser(downloadedData: jsonResponseArray)
                                    self?.delegate?.didDownloadParsedSeason(downloadedSeason: seasonData)
                                }
                            }
                        } catch{
                            print(error.localizedDescription)
                        }
                    }
                }
                task.resume()
            }
        }
    }
    
    func getEpisode(episode: String){
        if let url = URL(string: "\(constants.episodeBaseURL)\(episode)"){
            let task = URLSession.shared.dataTask(with: url){[weak self](data, response, error) in
                if error != nil{
                    print(error as Any)
                } else{
                    do{
                        if let jsonData = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String: Any]{
                            DispatchQueue.main.async {
                                let episodeData = Episode.episodeParser(jsonData: jsonData)
                                self?.delegateEp?.didDownloadParsedEpisode(downloadedEpisode: episodeData)
                            }
                        }
                    }catch{
                        print(error.localizedDescription)
                    }
                }
            }
            task.resume()
        }
    }
    func getPoster(url: String){
        if let url = URL(string: url){
            let task = URLSession.shared.dataTask(with: url){[weak self](data, response, error) in
                if error != nil{
                    print(error as Any)
                } else{
                        if let imageData = data {
                            DispatchQueue.main.async {
                                self?.delegateEp?.didDownloadPoster(image: UIImage(data: imageData)!)
                            }
                        }
                }
            }
            task.resume()
        }
    }
}
