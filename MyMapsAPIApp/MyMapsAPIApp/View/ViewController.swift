//
//  ViewController.swift
//  MyMapsAPIApp
//
//  Created by MCS Devices on 1/4/18.
//  Copyright © 2018 MCS Devices. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var searchBar: UISearchBar!
    let locationManager = CLLocationManager()
    var places: [Place] = []
    var networkTask: [Any?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareLocation()
        
    }

    func prepareLocation(){
        locationManager.requestWhenInUseAuthorization()
        if CLLocationManager.locationServicesEnabled(){
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setAnnotation(_ coords: CLLocationCoordinate2D, _ place: Place){
        let annotation = MyAnnotation()
        annotation.coordinate = coords
        annotation.title = place.name
        annotation.placeId = place.placeId
        map.addAnnotation(annotation)
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.first{
            print(location.coordinate)
            let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
            map.setRegion(MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)), animated: true)
            let networkManager = NetworkManager()
            networkManager.delegatePlaces = self
            networkTask.append(networkManager)
            networkManager.getPlaces(lat: String(location.coordinate.latitude), long: String(location.coordinate.longitude))
        }
    }

    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == CLAuthorizationStatus.denied{
            print(status.rawValue)
            showLocationDisabledPopUp()
        }
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
extension ViewController: MKMapViewDelegate{
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        print(view.annotation?.title)
        performSegue(withIdentifier: "detailsSegue", sender: view)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsSegue", let destination = segue.destination as? DetailsViewController{
            if let annotation = sender as? MKAnnotationView{
                destination.placeId = (annotation.annotation as! MyAnnotation).placeId
                print(destination.placeId)
            }
        }
    }
}
extension ViewController: NetworkManagerDelegatePlaces{
    func didGetPlaces(info: [Place]) {
        places = info
        print("--------------\(places.count)")
        for place in places{
            print(place)
            let coord = CLLocationCoordinate2D(latitude: CLLocationDegrees(place.lat), longitude: CLLocationDegrees(place.long))
            setAnnotation(coord, place)
        }
    }
    
    
}
