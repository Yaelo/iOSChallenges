//
//  ViewController.swift
//  randomStarWarsChars
//
//  Created by MCS Devices on 10/19/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var persons: [Person] = []
    var species: [String] = []
    var networkRequests: [Any?] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        for i in 1..<37{
            species.append(String(i))
        }
        let myNetworkManager = NetworkManager()
        networkRequests.append(myNetworkManager)
        myNetworkManager.delegate = self
        //myNetworkManager.downloadSpecie()
        for item in randomNumbers(size: 30, upperBound: 87){
            myNetworkManager.donwloadStarWars(page: item)
        }
        prepareCellDimension()
        setTitles()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func randomNumbers(size: Int, upperBound: Int) -> [Int]{
        var numbers: [Int] = []
        var num: Int
        for i in 0..<size{
            num = Int(arc4random_uniform(_: UInt32(upperBound)) + 1)
            for var n in 0..<i{
                if num == numbers[n]{
                    num = Int(arc4random_uniform(_: UInt32(upperBound)) + 1)
                    n = 0
                }
            }
            numbers.append(num)
        }
        return numbers
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue){
        if let source = sender.source as? CreatePersonsViewController{
            if let name = source.thisName, let height = source.thisHeigh, let mass = source.thisMass, let hair = source.thisHairColor, let skin = source.thisSkinColor, let eye = source.thisEyeColor, let birth = source.thisBirthYear, let gender = source.thisGender, let homeworld = source.thisHomeworld, let specie = source.thisSpecies{
                
                persons.append(Person.init(birth: birth, eyeColor: eye, gender: gender, hairColor: hair, height: height, homeworld: homeworld, mass: mass, name: name, skinColor: skin))
                persons.last?.specie = specie
                tableView.reloadData()
                print("new person created")
            }
        }
    }
    
    func prepareCellDimension(){
        tableView.estimatedRowHeight = 30
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.register(UINib(nibName: "PersonCell", bundle: nil), forCellReuseIdentifier: "PersonCell")
    }

}

extension ViewController: NetworkManagerDelegate{
    func didDownloadParsedSpecies(downloadedSpecies: [String]) {
        species = downloadedSpecies
        for specie in species{
            print(specie)
        }
    }
    
    func didDownloadParsedPostArray(downloadedPerson: Person) {
        persons.append(downloadedPerson)
        tableView.reloadData()
    }
}



extension ViewController: UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonCell", for: indexPath) as! PersonCell
        cell.nameLabel.text = persons[indexPath.row].name
        cell.genderLabel.text = persons[indexPath.row].gender
        cell.homeworldLabel.text = persons[indexPath.row].birthYear
        if let specie = persons[indexPath.row].specie, let myImage = UIImage(named: "\(specie)"){
            cell.genderImage.image = myImage
        } else if let text = persons[indexPath.row].specie{
            let attributes = [
                NSAttributedStringKey.foregroundColor: UIColor.yellow,
                NSAttributedStringKey.font: UIFont.systemFont(ofSize: 18)
            ]
            let textSize = text.size(withAttributes: attributes)
            
            let renderer = UIGraphicsImageRenderer(size: textSize)
            cell.genderImage.image = renderer.image(actions: { context in
                text.draw(at: CGPoint.zero, withAttributes: attributes)
            })
            
        }
        if indexPath.row % 2 == 0{
            cell.backgroundColor = UIColor.lightGray
        } else{
            cell.backgroundColor = UIColor.gray
        }
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    fileprivate func setTitles() {
        navigationItem.title = "Star Wars Characters"
        
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            persons.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
        }
    }
    
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: constants.displayPersonSegue, sender: persons[indexPath.row])
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == constants.displayPersonSegue{
            print("prepared")
            if let nextViewControllet = segue.destination as? DisplayPersonViewController, let indexRow = tableView.indexPathForSelectedRow?.row {
               
                //nextViewControllet.myImage.image = persons[indexRow].avatar
                nextViewControllet.currentPerson = persons[indexRow]
            }
        }
    }
}
