//
//  NetworkManager.swift
//  randomStarWarsChars
//
//  Created by MCS Devices on 10/20/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
final class NetworkManager{
    weak var delegate: NetworkManagerDelegate?
    func donwloadStarWars(page: Int){
        let urlString = URL(string: "\(constants.peopleDataURL)\(page)")
        if let url = urlString{
            let task = URLSession.shared.dataTask(with: url){[weak self](data, response, error) in
                if error != nil{
                    print(error as Any)
                }else{
                    do{
                        if let jsonArray = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String:Any]{
                            DispatchQueue.main.async {
                                let downloadedP = Person.parser(downloadedArray: jsonArray)
                                self?.delegate?.didDownloadParsedPostArray(downloadedPerson: downloadedP)
                                print("did \(page)")
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
    func downloadSpecie() {
        let urlString = URL(string: "\(constants.speciesDataURL)")
        if let url = urlString{
            let task = URLSession.shared.dataTask(with: url){[weak self](data, response, error) in
                if error != nil{
                    print(error as Any)
                }else{
                    do{
                        if let jsonArray = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String: Any]{
                            DispatchQueue.main.async {
                                let downloadedSpecies = Person.parseSpecie(downloadedDictionary: jsonArray)
                                self?.delegate?.didDownloadParsedSpecies(downloadedSpecies: downloadedSpecies)
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
}
