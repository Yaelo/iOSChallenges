//
//  ShowEpisodeController.swift
//  GameOfThronesMidterm
//
//  Created by MCS Devices on 10/26/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class ShowEpisodeController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var saveButton: UIButton!
    
    var episodeID: String?
    var networkRequests: [Any?] = []
    var episode: Episode?
    private var saved = false
    var isSaved: Bool {
        get{return saved}
        set{saved = newValue}
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print(saved)
        if episodeID != nil{
            let networkManager = NetworkManager()
            networkRequests.append(networkManager)
            networkManager.delegateEp = self
            networkManager.getEpisode(episode: episodeID!)
            print("enter\(saved)")
            saveButton.setTitle(!saved ? "Save": "Delete"
                    , for: .normal)
        }
        if episode != nil{
            fillTextWithEpisode(episode: episode!)
        }
        let pictureTap = UITapGestureRecognizer(target: self, action: #selector(self.imageTapped(_:)))
        myImageView.addGestureRecognizer(pictureTap)
        // Do any additional setup after loading the view.
    }
    func isSaved(isSaved: Bool){
        saved = isSaved
    }
    
    @IBAction func saveAction(_ sender: Any) {
        saveButton.setTitle(saved ? "Delete": "Save"
            , for: .normal)
        let dataPersistanceManager = DataPersistanceManager()
        if !saved{
            dataPersistanceManager.storeEpisode(episode: episode!)
        }else{
            dataPersistanceManager.deleteEpisode(episodeID: episodeID!)
        }
        saved = !saved
    }
    func fillTextWithEpisode(episode: Episode){
        var text = ""
        text.append("Title: \(episode.title ?? "title")\n")
        text.append("Year: \(episode.year ?? "year")\n")
        text.append("Rated: \(episode.rated ?? "rated")\n")
        text.append("Released: \(episode.released ?? "title")\n")
        text.append("Season: \(episode.season ?? "season")\n")
        text.append("Episode: \(episode.episode ?? "epis")\n")
        text.append("Runtime: \(episode.runtime ?? "rt")\n")
        text.append("Genre: \(episode.genre ?? "gn")\n")
        text.append("Director: \(episode.director ?? "dir")\n")
        text.append("Writer: \(episode.writer ?? "writ")\n")
        text.append("Actors: \(episode.actors ?? "act")\n")
        text.append("Plot: \(episode.plot ?? "plot")\n")
        text.append("Language: \(episode.language ?? "lan")\n")
        text.append("Country: \(episode.country ?? "coun")\n")
        text.append("Awards: \(episode.awards ?? "awards")\n")
        text.append("Metascore: \(episode.metaScore ?? "meta")\n")
        text.append("imdbRating: \(episode.imdbRating ?? "rating")\n")
        infoLabel.text = text
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func imageTapped(_ sender: UITapGestureRecognizer) {
        let imageView = sender.view as! UIImageView
        let newImageView = UIImageView(image: imageView.image)
        newImageView.frame = UIScreen.main.bounds
        newImageView.backgroundColor = .black
        newImageView.contentMode = .scaleAspectFit
        newImageView.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
        newImageView.addGestureRecognizer(tap)
        self.view.addSubview(newImageView)
        self.navigationController?.isNavigationBarHidden = true
        self.tabBarController?.tabBar.isHidden = true
    }
    
    @objc func dismissFullscreenImage(_ sender: UITapGestureRecognizer) {
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.tabBar.isHidden = false
        sender.view?.removeFromSuperview()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
extension ShowEpisodeController: NetworkManagerDelegateEp{
    func didDownloadPoster(image: UIImage) {
        myImageView.image = image
    }
    
    func didDownloadParsedEpisode(downloadedEpisode: Episode) {
        if let posterURL = downloadedEpisode.poster {
            let networkManager = NetworkManager()
            networkRequests.append(networkManager)
            networkManager.delegateEp = self
            networkManager.getPoster(url: posterURL)
        }
        episode = downloadedEpisode
        fillTextWithEpisode(episode: downloadedEpisode)
    }
    
    
}
