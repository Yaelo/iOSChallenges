//
//  ReservationViewController.swift
//  Reservation
//
//  Created by MCS Devices on 11/10/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class ReservationViewController: UIViewController, ReservationDelegate {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var reservations: [Reservation] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let persistanceManager = DataPersistanceManager()
        reservations = persistanceManager.getAllReservations()
        prepareCells()
        setTitle()
    }
    fileprivate func setTitle(){
        self.navigationController?.title = "My Reservations"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func prepareCells(){
        tableView.rowHeight = 230
        tableView.estimatedRowHeight = UITableViewAutomaticDimension
        tableView.register(UINib(nibName: Constants.ReservationTableViewCell, bundle: nil), forCellReuseIdentifier: Constants.ReservationTableViewCell)
    }
    func didCancelReservation(canceledReservation: Reservation) {
        for i in 0..<reservations.count {
            if canceledReservation.date == reservations[i].date, canceledReservation.service == reservations[i].service{
                let persistanceManager = DataPersistanceManager()
                persistanceManager.deleteReservations(reservation: canceledReservation)
                reservations.remove(at: i)
                tableView.deleteRows(at: [IndexPath.init(row: i, section: 0)], with: .automatic)
                break
            }
        }
    }
    func didPressReschedule(actualReservation: Reservation) {
        let alert = UIAlertController(title: "Alert", message: "The current reservation will be deleted if you want to reschedule. Do you want to continue?", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Reschedule", style: .destructive, handler: { action in
            let dataManager = DataPersistanceManager()
            dataManager.deleteReservations(reservation: actualReservation)
            if let destinationViewController = self.storyboard?.instantiateViewController(withIdentifier: Constants.ScheduleViewController) as? ScheduleViewController, let service = Services(rawValue: actualReservation.service){
                destinationViewController.service = service
                let navController = self.navigationController!
                navController.popViewController(animated: false)
                navController.pushViewController(destinationViewController, animated: true)
            }
            }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
}
extension ReservationViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reservations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.ReservationTableViewCell, for: indexPath) as! ReservationTableViewCell
        cell.setCell(reservation: reservations[indexPath.row])
        cell.delegate = self
        return cell
    }
    
    
}
