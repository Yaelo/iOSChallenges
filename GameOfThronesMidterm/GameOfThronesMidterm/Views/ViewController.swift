//
//  ViewController.swift
//  GameOfThronesMidterm
//
//  Created by MCS Devices on 10/25/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    
    var seasons: [String: [Episode]] = [:]
    var numberOfSeasons: Int?
    var networkRequests: [Any?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let networkManager = NetworkManager()
        networkRequests.append(networkManager)
        networkManager.delegate = self
        networkManager.getSeasonNumber()
        initialSetup()
        //DataPersistanceManager().dropAll()
    }
    fileprivate func initialSetup(){
        setTitle()
        tableView.estimatedRowHeight = 30
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.register(UINib(nibName: constants.episodeCell, bundle: nil), forCellReuseIdentifier: constants.episodeCell)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func unwindToThisView(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? ShowEpisodeController {
            let isSaved = sourceViewController.isSaved
            print("\(isSaved)")
        }
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
}

extension ViewController: NetworkManagerDelegate{
    func didDownloadParsedSeasonNumber(downloadedNumber: Int) {
        //networkManager.getSeasonData(totalSeasons: downloadedNumber)
    }
    
    func didDownloadParsedSeason(downloadedSeason: Season) {
        seasons["season\(downloadedSeason.seasonNumber ?? "0")"] = downloadedSeason.episodes
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var keys = Array(seasons.keys).sorted{$0<$1}
        return (seasons[keys[section]]?.count)!
        //return seasons.values.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: constants.episodeCell, for: indexPath) as! EpisodeCell
        var keys = Array(seasons.keys).sorted{$0<$1}
        if let item = seasons[keys[indexPath.section]]{
            cell.fillCell(episode: item[indexPath.row])
        }
        if indexPath.row%2 == 0 {
            cell.backgroundColor = UIColor.lightGray
        }else{
            cell.backgroundColor = UIColor.white
        }
        return cell
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return seasons.keys.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var keys = Array(seasons.keys).sorted{$0<$1}
        return keys[section]
    }
    
    fileprivate func setTitle() {
        navigationItem.title = "GoT Seasons & Episodes"
    }
}
extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var keys = Array(seasons.keys).sorted{$0<$1}
        performSegue(withIdentifier: constants.ShowEpisodeSegue, sender: seasons[keys[indexPath.section]]?[indexPath.row].imdbID)
        
    }
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == constants.ShowEpisodeSegue{
            if let nextView = segue.destination as? ShowEpisodeController, let indexSection = tableView.indexPathForSelectedRow?.section, let indexRow = tableView.indexPathForSelectedRow?.row{
                var keys = Array(seasons.keys).sorted{$0<$1}
                let id = seasons[keys[indexSection]]?[indexRow].imdbID
                nextView.episodeID = id
                let dataManager = DataPersistanceManager()
                if dataManager.getEpisode(episodeID: id!) != nil {
                    print("previously saved")
                    nextView.isSaved = true
                }else{
                    print("notSaved")
                    nextView.isSaved = false
                }
            }
        }
    }
        
}
