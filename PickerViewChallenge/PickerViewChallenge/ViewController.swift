//
//  ViewController.swift
//  PickerViewChallenge
//
//  Created by MCS Devices on 11/1/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var months: [String] = []
    var days: [[String]] = [[]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fillArrays()
        datePicker.datePickerMode = UIDatePickerMode.date
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func fillArrays(){
        months = ["January", "February", "March", "April", "May", "June", "July", "August","September", "October", "November", "December"]
        let monthDays = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
        for i in 0..<months.count {
            for j in 0..<monthDays[i]{
                days[i].append("\(j+1)")
            }
            days.append([])
        }
    }
    
    @IBAction func dateAction(_ sender: Any?) {
        let dateFormater = DateFormatter()
        dateFormater.dateStyle = DateFormatter.Style.long
        let chosenDate = datePicker.date
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day, .month, .year], from: datePicker.date)
        
        dateLabel.text = dateFormater.string(from: chosenDate)
        pickerView.selectRow(components.month!-1, inComponent: 0, animated: true)
        pickerView.selectRow(components.day!-1, inComponent: 1, animated: true)
    }
}

extension ViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return months.count
        default:
            let selected = pickerView.selectedRow(inComponent: 0)
            return days[selected].count
        }
    }
    
}

extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch component {
        case 0:
            pickerView.reloadComponent(1)
            
            return months[row]
        case 1:
            let selected = pickerView.selectedRow(inComponent: 0)
            return days[selected][row < days[selected].count ? row : days[selected].count - 1]
        default:
            return "default"
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let calendar = Calendar.current
        var components = calendar.dateComponents([.day, .month, .year], from: datePicker.date)
        switch component {
        case 0:
            pickerView.reloadComponent(1)
            let selected = pickerView.selectedRow(inComponent: 1)
            dateLabel.text = "\(months[row])/\(days[row][selected])"
            components.month = row+1
            components.day = selected+1
            datePicker.setDate(calendar.date(from: components)!, animated: true)
        case 1:
            let selected = pickerView.selectedRow(inComponent: 0)
            dateLabel.text = "\(months[selected])/\(days[selected][row])"
            components.month = selected+1
            components.day = row+1
            datePicker.setDate(calendar.date(from: components)!, animated: true)
        default:
            print("def")
        }
        
    }
}

