//
//  ViewController.swift
//  ColectionViews
//
//  Created by MCS Devices on 11/1/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myCollectionView: UICollectionView!
    var myArray : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
                myArray = ["1", "2", "3", "4", "5", "6"]
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath)
        let theImage = cell.viewWithTag(100) as! UIImageView
        theImage.image = UIImage(named: myArray[indexPath.row])
        return cell
    }
    
    
}
