//
//  NetworkManager.swift
//  MyMapsAPIApp
//
//  Created by MCS Devices on 1/4/18.
//  Copyright © 2018 MCS Devices. All rights reserved.
//

import Foundation
class NetworkManager {
    var delegatePlaces: NetworkManagerDelegatePlaces?
    var delegateInfo: NetworkManagerDelegateInfo?
    
    func getPlaces(lat: String, long: String){
        if let url = URL(string: Constants.sitesURL+"\(lat),\(long)"+Constants.radiusAndKey){
            print(url.absoluteString)
            let task = URLSession.shared.dataTask(with: url){ [weak self] (data, response, error) in
                if error != nil{
                    print(error.debugDescription)
                } else{
                    do{
                        if let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String: Any]{
                            DispatchQueue.main.async {
                                let places = Place.parsePlaces(jsonData: jsonResponse)
                                self?.delegatePlaces?.didGetPlaces(info: places)
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
    func getInfo(placeId: String){
        if let url = URL(string: Constants.placeURL+placeId+Constants.key){
            let task = URLSession.shared.dataTask(with: url){ [weak self] (data, response, error) in
                if error != nil{
                    print(error.debugDescription)
                } else{
                    do{
                        if let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String: Any]{
                            DispatchQueue.main.async {
                                let place = Place.parseInfoPlace(jsonData: jsonResponse)
                                self?.delegateInfo?.didGetInfo(info: place)
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
