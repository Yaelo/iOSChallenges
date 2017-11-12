//
//  ScheduleViewController.swift
//  Reservation
//
//  Created by MCS Devices on 11/9/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController {
    
    @IBOutlet weak var serviceLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var partySizeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var monthLabel: UILabel!
    @IBOutlet weak var collectionViewDays: UICollectionView!
    @IBOutlet weak var collectionViewHours: UICollectionView!
    
    @IBOutlet weak var reserveButton: UIButton!
    @IBOutlet weak var pickerViewArea: UIView!
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var doneButton: UIButton!
    
    var days: [Date] = []
    var hours: [String] = []
    let partySizeAvailable = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    var service: Services?
    var selectedDay: Bool = false
    var selectedHour: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if service != nil{
            for thisService in ScheduleViewController.getAvailableServices() {
                if thisService.service == service {
                    serviceLabel.text = thisService.service.rawValue
                    hoursLabel.text = thisService.time
                    priceLabel.text = "$\(thisService.price)"
                    descriptionLabel.text = thisService.description
                    partySizeLabel.text = "\(1)"
                    imageView.image = UIImage(imageLiteralResourceName: thisService.imageName)
                    break
                }
            }
        }
        prepareDates()
        hours = getHours()
        collectionViewHours.layer.cornerRadius = 15.0
    }

    func prepareDates(){
        let calendar = Calendar.current
        var components = calendar.dateComponents([.day, .month], from: Date.init())
        
        let formater = DateFormatter()
        let months = formater.monthSymbols
        let monthSimbols = months?[components.month! - 1] ?? "nil"
        monthLabel.text = monthSimbols
        let interval = calendar.dateInterval(of: .month, for: Date())!
        let resultantDays = calendar.dateComponents([.day], from: Date(), to: interval.end)
        var currentDay = Date()
        var nextDay = Date()
        for _ in 0..<resultantDays.day!{
            nextDay = calendar.date(byAdding: .day, value: 1, to: currentDay)!
            days.append(nextDay)
            currentDay = nextDay
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func reserveAction(_ sender: Any) {
        pickerViewArea.isHidden = false
    }
    @IBAction func cancelAction(_ sender: Any) {
        pickerViewArea.isHidden = true
    }
    @IBAction func doneAction(_ sender: Any) {
        
        if let destinationViewController = self.storyboard?.instantiateViewController(withIdentifier: Constants.ReservationViewController) as? ReservationViewController, let navController = self.navigationController{
            
            let partySize = partySizeAvailable[pickerView.selectedRow(inComponent: 0)]
            let row = collectionViewDays.indexPathsForSelectedItems?.first?.row
            let hourRow = collectionViewHours.indexPathsForSelectedItems?.first?.row
            let actualDate = days[row!]
            let selectedHour = hours[hourRow!]
            var components = Calendar.current.dateComponents([.day, .month, .year], from: actualDate)
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "yyyy/MM/dd hh:mm a"
            let fullDate = dateFormatter.date(from: "\(components.year!)/\(components.month!)/\(components.day!) \(selectedHour)")
            let reservation = Reservation.init(date: fullDate!, partySize: partySize, service: (service?.rawValue)!)
            let persistanceManager = DataPersistanceManager()
            persistanceManager.insertReservations(reservation: reservation)
            
            navController.popViewController(animated: false)
            navController.pushViewController(destinationViewController, animated: true)
        }
        //performSegue(withIdentifier: Constants.ReservationSegue, sender: nil)
    }
}
extension ScheduleViewController: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return partySizeAvailable.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(partySizeAvailable[row])"
    }
}
extension ScheduleViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewDays {
            return days.count
        } else{
            return hours.count
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == collectionViewDays{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DayCell", for: indexPath)
            cell.layer.cornerRadius = 8.0
            let calendar = Calendar.current
            var components = calendar.dateComponents([.day], from: days[indexPath.row])
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "EEEE"
            let dayInWeek = dateFormatter.string(from: days[indexPath.row])
            (cell.viewWithTag(1) as! UILabel).text = "\(dayInWeek)"
            (cell.viewWithTag(2) as! UILabel).text = "\(components.day ?? 0)"
            cell.viewWithTag(9)?.isHidden = true
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HourCell", for: indexPath)
            (cell.viewWithTag(1) as! UILabel).text = hours[indexPath.row]
            cell.viewWithTag(9)?.isHidden = true
            cell.layer.cornerRadius = 8.0
            return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == collectionViewDays{
            let cell = collectionView.cellForItem(at: indexPath)
            cell?.viewWithTag(9)?.isHidden = false
            selectedDay = true
            if selectedDay && selectedHour {
                reserveButton.backgroundColor = UIColor.blue
                reserveButton.isEnabled = true
            }
        }else{
            let cell = collectionView.cellForItem(at: indexPath)
            cell?.viewWithTag(9)?.isHidden = false
            selectedHour = true
            if selectedDay && selectedHour {
                reserveButton.backgroundColor = UIColor.blue
                reserveButton.isEnabled = true
            }
        }
    }
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if collectionView == collectionViewDays{
            let cell = collectionView.cellForItem(at: indexPath)
            cell?.viewWithTag(9)?.isHidden = true
        }else{
            let cell = collectionView.cellForItem(at: indexPath)
            cell?.viewWithTag(9)?.isHidden = true
        }
    }
}
extension ScheduleViewController{
    static func getAvailableServices() -> [ServicesData]{
        var allServices: [ServicesData] = []
        allServices.append(ServicesData.init(service: Services.SwedishMassage, time: "1H", price: 120, description: "Swedish massage is the most common and best-known type of massage in the West.", imageName: Constants.SwedishMassage))
        allServices.append(ServicesData.init(service: Services.DeepTissueMassage, time: "1H", price: 50, description: "Deep tissue massage is aimed at the deeper tissue structures of the muscle and fascia, also called connective tissue",imageName: Constants.DeepTissueMassage))
        allServices.append(ServicesData.init(service: Services.SportMassage, time: "1H", price: 100, description: "Is a form of bodywork geared toward participants in athletics. It is used to help prevent injuries, to prepare the body for athletic activity and maintain it in optimal condition, and to help athletes recover from workouts and injuries.",imageName: Constants.SportMassage))
        allServices.append(ServicesData.init(service: Services.Reflexologi, time: "1H", price: 120, description: "Is an alternative medicine involving application of pressure to the feet and hands with specific thumb, finger, and hand techniques without the use of oil or lotion.",imageName: Constants.Reflexologi))
        allServices.append(ServicesData.init(service: Services.TriggerPointTherapy, time: "1H", price: 130, description: "are described as hyperirritable spots in the fascia surrounding skeletal muscle. They are associated with palpable nodules in taut bands of muscle fibers.",imageName: Constants.TriggerPointTherapy))
        return allServices
    }
    func getHours() -> [String]{
        var thisHours: [String] = []
        thisHours.append("9:00 AM")
        thisHours.append("10:00 AM")
        thisHours.append("11:00 AM")
        thisHours.append("12:00 PM")
        thisHours.append("1:00 PM")
        thisHours.append("2:00 PM")
        thisHours.append("3:00 PM")
        thisHours.append("4:00 PM")
        thisHours.append("5:00 PM")
        thisHours.append("6:00 PM")
        thisHours.append("7:00 PM")
        thisHours.append("8:00 PM")
        return thisHours
    }
}
