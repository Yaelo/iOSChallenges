//
//  ViewController.swift
//  AlaskaAirlinesCSA
//
//  Created by MCS Devices on 11/17/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    var flights: [Flight] = []
    var networkTasks: [Any?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 50
        let defaults = UserDefaults.standard
        if let val = defaults.string(forKey: Keys.airportKey){
            searchBar.text = val
            
            performNetwork(airportCode: val)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func performNetwork(airportCode: String){
        let networkManager = NetworkManager()
        networkTasks.append(networkManager)
        networkManager.delegate = self
        networkManager.getFlight(airportCode: airportCode)
    }

}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flights.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TableViewCell
        cell.fillCell(flight: flights[indexPath.row], color: indexPath.row)
        return cell
    }
}
extension ViewController: NetworkManagerDelegate{
    func didDownloadedFlights(DownloadedFlights: [Flight]) {
        flights = DownloadedFlights
        let defaults = UserDefaults.standard
        defaults.set(searchBar.text ?? "", forKey: Keys.airportKey)
        tableView.reloadData()
    }
}
extension ViewController: UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let text = searchBar.text {
            performNetwork(airportCode: text)
        }
    }
}
