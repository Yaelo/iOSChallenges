//
//  ViewController.swift
//  Reservation
//
//  Created by MCS Devices on 11/8/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var tableView: UITableView!
    
    let services = [Services.SwedishMassage, Services.DeepTissueMassage, Services.SportMassage , Services.Reflexologi , Services.TriggerPointTherapy]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //tableView.rowHeight = (tableView.contentSize.height / 5.0)  - 1.0
        tableView.layer.cornerRadius = 15.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showReservationsAction(_ sender: Any) {
        if let destinationViewController = storyboard?.instantiateViewController(withIdentifier: Constants.ReservationViewController){
            navigationController?.pushViewController(destinationViewController, animated: true)
        }
    }
    
}

extension ViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return services.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        (cell.viewWithTag(1) as! UILabel).text = services[indexPath.row].rawValue
        //cell.backgroundColor = indexPath.row % 2 == 0 ? UIColor.white : UIColor.lightGray
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: Constants.scheduleSegue, sender: indexPath.row)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Constants.scheduleSegue{
            if let nextView = segue.destination as? ScheduleViewController, let row = tableView.indexPathForSelectedRow?.row{
                nextView.service = services[row]
            }
        }
    }
}
