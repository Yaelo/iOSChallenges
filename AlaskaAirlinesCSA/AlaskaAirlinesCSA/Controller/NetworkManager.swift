//
//  NetworkManager.swift
//  AlaskaAirlinesCSA
//
//  Created by MCS Devices on 11/17/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
final class NetworkManager {
    weak var delegate: NetworkManagerDelegate?
    func getFlight(airportCode: String){
        let minutesPast = "10"
        let minutesFuture = "60"
        if let url = URL(string: "\(Constants.baseURL)\(airportCode)/flights/flightInfo?city=\(airportCode)&minutesBehind=\(minutesPast)&minutesAhead=\(minutesFuture)"){
            var request = URLRequest(url: url)
            request.addValue(Constants.headerValue, forHTTPHeaderField: Constants.header)
            let task = URLSession.shared.dataTask(with: request){[weak self](data, response, error) in
                if error != nil{
                    print("\(error.debugDescription)")
                } else{
                    do{
                        if let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as? [[String: Any]]{
                            DispatchQueue.main.async {
                                let flights = Flight.flightParser(jsonData: jsonResponse)
                                self?.delegate?.didDownloadedFlights(DownloadedFlights: flights)
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
