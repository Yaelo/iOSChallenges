//
//  ViewController.swift
//  ISSP Challenge
//
//  Created by MCS Devices on 12/7/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var tableView: UITableView!
    let locationManager = CLLocationManager()
    var passes: [Pass] = []
    var networkRequest: [Any?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 75.0
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled(){
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            print("-----------")
            print(location.coordinate)
            //coordLbl.text = "locations = \(location.coordinate.latitude) \(location.coordinate.longitude)"
            let networkManager = NetworkManager()
            networkRequest.append(networkManager)
            networkManager.delegate = self
            networkManager.getSteps(lat: String(location.coordinate.latitude), long: String(location.coordinate.longitude))
        }
    }
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if(status == CLAuthorizationStatus.denied) {
            print(status.rawValue)
            showLocationDisabledPopUp()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func showLocationDisabledPopUp() {
        print("show disbled")
        let alertController = UIAlertController(title: "Background Location Access Disabled",
                                                message: "We need your location",
                                                preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        let openAction = UIAlertAction(title: "Open Settings", style: .default) { (action) in
            if let url = URL(string: UIApplicationOpenSettingsURLString) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        }
        alertController.addAction(openAction)
        
        self.present(alertController, animated: true, completion: nil)
    }
    
}
extension ViewController: NetworkManagerDelegate{
    func didDownloadPass(downloadedPasses: [Pass]) {
        passes = downloadedPasses
        passes.forEach{
            print($0)
        }
        tableView.reloadData()
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return passes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.fillCell(pass: passes[indexPath.row])
        cell.backgroundColor = indexPath.row % 2 == 0 ? UIColor.white : UIColor.lightGray
        return cell
    }
}
