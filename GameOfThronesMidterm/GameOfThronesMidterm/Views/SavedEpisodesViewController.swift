//
//  SavedEpisodesViewController.swift
//  GameOfThronesMidterm
//
//  Created by MCS Devices on 10/27/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class SavedEpisodesViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var editButton: UIBarButtonItem!
    
    var episodes: [Episode] = []
    private var editable = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareCells()
        //retrieveStoredData()
        // Do any additional setup after loading the view.
    }
    @objc fileprivate func deleteSavedEpisodes(){
        if let selectionArray = tableView.indexPathsForSelectedRows{
            let selectionIntArray = IndexPath.getSortedInexPathRows(indexPathArray: selectionArray)
            selectionIntArray.forEach {
                DataPersistanceManager().deleteEpisode(episodeID: episodes[$0].imdbID!)
                episodes.remove(at: $0)
            }
            tableView.deleteRows(at: selectionArray, with: .automatic)
        }
        editActionButton(nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    fileprivate func setTitle(){
        navigationItem.title = "Saved GoT Episodes"
    }
    func prepareCells(){
        setTitle()
        editButton.title = "Edit"
        let add = UIBarButtonItem(title: "Delete", style: .plain, target: self, action: #selector(deleteSavedEpisodes))
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        toolbarItems = [spacer, add]
        tableView.isEditing = editable
        tableView.allowsMultipleSelectionDuringEditing = true
        tableView.estimatedRowHeight = 30
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.register(UINib(nibName:constants.episodeCell, bundle: nil), forCellReuseIdentifier: constants.episodeCell)
    }
    func retrieveStoredData(){
        let dataManager = DataPersistanceManager()
        let storedEpisodes = dataManager.getAllEpisodes()
        episodes = storedEpisodes
        tableView.reloadData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        retrieveStoredData()
    }
    
    @IBAction func editActionButton(_ sender: Any?) {
        editable = editable ? false : true
        editButton.title = editable ? "Cancel" : "Edit"
        //tableView.allowsMultipleSelection = !editable
        navigationController?.setToolbarHidden(!editable, animated: true)
        tableView.setEditing(editable, animated: true)
        setTitle()
    }
}
extension SavedEpisodesViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return episodes.count
        //return seasons.values.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: constants.episodeCell, for: indexPath) as! EpisodeCell
        cell.fillCell(episode: episodes[indexPath.row])
        cell.episodeLabel.text?.append(" ")
        if indexPath.row%2 == 0 {
            cell.backgroundColor = UIColor.lightGray
        }else{
            cell.backgroundColor = UIColor.white
        }
        return cell
    }
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return episodes.count
//    }
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return keys[section]
//    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editable, editingStyle == .delete {
            episodes.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
extension SavedEpisodesViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if !editable{
            performSegue(withIdentifier: constants.savedEpisodeSegue, sender: episodes[indexPath.row])
        } else{
            
            //let cell = tableView.cellForRow(at: indexPath)
            //cell?.accessoryType = .checkmark
            //cell?.accessoryType = cell.isSelected ? .checkmark : .none
            //cell?.selectionStyle = .none
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == constants.savedEpisodeSegue{
            if let nextView = segue.destination as? ShowEpisodeController, let indexRow = tableView.indexPathForSelectedRow?.row{
                nextView.episode = episodes[indexRow]
            }
        }
    }
}
