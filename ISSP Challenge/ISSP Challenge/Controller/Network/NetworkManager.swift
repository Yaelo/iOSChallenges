//
//  NetworkManager.swift
//  ISSP Challenge
//
//  Created by MCS Devices on 12/7/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
class NetworkManager {
    var delegate: NetworkManagerDelegate?
    func getSteps(lat: String, long: String){
        if let url = URL(string: "http://api.open-notify.org/iss-pass.json?lat=\(lat)&lon=\(long)"){
            let task = URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
                if error != nil {
                    print(error.debugDescription)
                } else{
                    do{
                        if let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [String: Any]{
                            DispatchQueue.main.async {
                                let passes = Pass.parseJson(jsonData: jsonResponse)
                                self?.delegate?.didDownloadPass(downloadedPasses: passes)
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
