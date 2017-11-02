//
//  ViewController.swift
//  CollectionViewControllerChallenge
//
//  Created by MCS Devices on 11/1/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var editButton: UIBarButtonItem!
    var persons: [Person] = []
    private var editable = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initialPersons()
        prepareCells()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func prepareCells(){
        let add = UIBarButtonItem(title: "Delete", style: .plain, target: self, action: #selector(deleteItems))
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        toolbarItems = [spacer, add]
        collectionView.register(UINib(nibName: Constants.collectionCell, bundle: nil), forCellWithReuseIdentifier: Constants.collectionCell)
        collectionView.allowsMultipleSelection = editable
        collectionView.allowsSelection = true
    }
    @IBAction func unwindSegue(_ sender: UIStoryboardSegue){
        if let source = sender.source as? CreatePersonViewController{
            persons.append(source.person!)
            collectionView.reloadData()
        }
    }
    
    @IBAction func editAction(_ sender: Any?) {
        editable = !editable
        //let selectedItem = collectionView.indexPathsForSelectedItems
        let items = collectionView.indexPathsForVisibleItems
        editButton.title = editable ? "Cancel" : "Edit"
        navigationController?.setToolbarHidden(!editable, animated: true)
        collectionView.allowsMultipleSelection = editable
        for item in items {
            collectionView.cellForItem(at: item)?.backgroundColor = editable ? UIColor.red : UIColor.white
        }
    }
    @objc func deleteItems(){
        if let selectedItems = collectionView.indexPathsForSelectedItems{
            let reversedItemsIndex: [IndexPath] = selectedItems.reversed()
            for item in reversedItemsIndex{
                persons.remove(at: item.row)
            }
            collectionView.deleteItems(at: reversedItemsIndex)
        }
        editAction(nil)
    }
}

extension ViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return persons.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.collectionCell, for: indexPath) as! CollectionViewCell
        cell.fillCell(person: persons[indexPath.row])
        cell.backgroundColor = UIColor.white
//        let width = collectionView.bounds.size.width / 2
//        let heigh = collectionView.bounds.size.height / 4
//        let cellSize = CGSize(width: width, height: heigh)
//        collectionView.layoutAttributesForItem(at: indexPath)?.size = cellSize
//       cell.sizeToFit()
        return cell
    }
}
extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if !editable{
            performSegue(withIdentifier: Constants.ShowPersonSegue, sender: nil)
        }else{
            print("orange")
            collectionView.cellForItem(at: indexPath)?.backgroundColor = UIColor.orange
        }
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if editable{
            collectionView.cellForItem(at: indexPath)?.backgroundColor = UIColor.red
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.ShowPersonSegue {
            if let nextViewController = segue.destination as? ShowPersonViewControler, let indexRow = collectionView.indexPathsForSelectedItems?.first?.row {
                nextViewController.person = persons[indexRow]
            }
        }
    }
}

extension ViewController {
    func initialPersons(){
        persons.append(Person(first: "Aaron",middle: "Yael",last: "Ponce",age: 25))
        persons.append(Person(first: "Ariel",middle: "de Jesus",last: "Ponce",age: 17))
        persons.append(Person(first: "Angel",middle: "Azael",last: "Ponce",age: 15))
        persons.append(Person(first: "Silvia",middle: "Clementina",last: "Guzman",age: 25))
    }
}
