//
//  EpisodeCell.swift
//  GameOfThronesMidterm
//
//  Created by MCS Devices on 10/25/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class EpisodeCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var episodeLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var releasedLabel: UILabel!
    @IBOutlet weak var savedButton: UIButton!
    
    var title: String?
    var ep: String?
    var rating: String?
    var rel: String?
    var epID: String?
    
    var episode: Episode?
    var networkRequest: [Any?] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func fillCell(episode: Episode){
        self.episode = episode
        if let season = episode.season{
            episodeLabel.text = String(format: "%02dx%02d",Int(season)!,Int(episode.episode!)!)
        }else{
            episodeLabel.text = episode.episode!
        }
        titleLabel.text = episode.title!
        ratingLabel.text = episode.imdbRating!
        releasedLabel.text = episode.released!
        epID = episode.imdbID!
        let dataPersistanceManager = DataPersistanceManager()
        savedButton.setTitle((dataPersistanceManager.getEpisode(episodeID: epID!) != nil) ? "Delete" : "Save", for: .normal)
    }
    func fillStored(episode: Episode){
        self.episode = episode
        titleLabel.text = episode.imdbID
        savedButton.setTitle("Delete", for: .normal)
    }
    @IBAction func SaveEpisode(_ sender: UIButton) {
        let dataPersistanceManager = DataPersistanceManager()
        let networkManager = NetworkManager()
        networkRequest.append(networkManager)
        networkManager.delegateEp = self
        if dataPersistanceManager.getEpisode(episodeID: epID!) == nil{
            networkManager.getEpisode(episode: epID!)
            //dataPersistanceManager.storeEpisode(episode: episode!)
            savedButton.setTitle("Delete", for: .normal)
        }else{
            dataPersistanceManager.deleteEpisode(episodeID: epID!)
            savedButton.setTitle("Save", for: .normal)
        }
    }
}
extension EpisodeCell: NetworkManagerDelegateEp{
    func didDownloadParsedEpisode(downloadedEpisode: Episode) {
        DataPersistanceManager().storeEpisode(episode: downloadedEpisode)
        print("stored \(downloadedEpisode.title ?? "x")")
    }
    
    func didDownloadPoster(image: UIImage) {
        print("Not used")
    }
    
}
