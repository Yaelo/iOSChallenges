//
//  ViewController.swift
//  ISSP Challenge
//
//  Created by MCS Devices on 12/7/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var tableView: UITableView!
    let locationManager = CLLocationManager()
    var passes: [Pass] = []
    var networkRequest: [Any?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 75.0
        prepareLocationManager()
        prepareMapkit()
    }
    func prepareLocationManager(){
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled(){
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
    }
    func prepareMapkit(){
        let longPressGesture = UILongPressGestureRecognizer(target: self, action: #selector(handleLongPress(_:)))
        longPressGesture.minimumPressDuration = 1.0
        map.addGestureRecognizer(longPressGesture)
    }
    @objc func handleLongPress(_ gestureRecognizer: UILongPressGestureRecognizer){
        if gestureRecognizer.state != .began { return }
        let touchPoint = gestureRecognizer.location(in: map)
        let touchMapCoord = map.convert(touchPoint, toCoordinateFrom: map)
        let pointAnnotation = MKPointAnnotation()
        pointAnnotation.coordinate = touchMapCoord
        updateAnotation(touchMapCoord)
        newNetworkRequest(lat: String(pointAnnotation.coordinate.latitude), long: String(pointAnnotation.coordinate.longitude))
        updateMap(lat: pointAnnotation.coordinate.latitude, long: pointAnnotation.coordinate.longitude)
    }
    func newNetworkRequest(lat: String, long: String){
        let networkManager = NetworkManager()
        networkRequest.append(networkManager)
        networkManager.delegate = self
        networkManager.getSteps(lat: lat, long: long)
    }
    func updateMap(lat: CLLocationDegrees, long: CLLocationDegrees){
        let center = CLLocationCoordinate2D(latitude: lat, longitude: long)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        self.map.setRegion(region, animated: true)
    }
    func updateAnotation(_ coords: CLLocationCoordinate2D){
        let pointAnnotation = MKPointAnnotation()
        pointAnnotation.coordinate = coords
        map.removeAnnotations(map.annotations)
        map.addAnnotation(pointAnnotation)
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first {
            print("-----------")
            print(location.coordinate)
            newNetworkRequest(lat: String(location.coordinate.latitude), long: String(location.coordinate.longitude))
            updateMap(lat: location.coordinate.latitude, long: location.coordinate.longitude)
            updateAnotation(location.coordinate)
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
        print("-----data reloaded-----")
    }
}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return passes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.fillCell(pass: passes[indexPath.row])
        cell.backgroundColor = indexPath.row % 2 != 0 ? UIColor.white : UIColor.lightGray
        return cell
    }
}
