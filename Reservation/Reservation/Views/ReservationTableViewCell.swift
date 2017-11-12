//
//  ReservationTableViewCell.swift
//  Reservation
//
//  Created by MCS Devices on 11/10/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class ReservationTableViewCell: UITableViewCell {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    @IBOutlet weak var serviceLabel: UILabel!
    @IBOutlet weak var partySizeLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var rescheduleButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    private var reservatedService: Reservation?
    var delegate: ReservationDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setCell(reservation: Reservation){
        reservatedService = reservation
        partySizeLabel.text = "Party Size: \(reservation.partySize)"
        serviceLabel.text = reservation.service
        for thisService in Constants.avaliableServicesData {
            if thisService.service.rawValue == reservatedService?.service {
                serviceLabel.text = thisService.service.rawValue
                durationLabel.text = thisService.time
                descriptionLabel.text = thisService.description
                partySizeLabel.text = "Party Size: \(reservation.partySize)"
                break
            }
        }
//        let calendar = Calendar.current
//        var components = calendar.dateComponents([.day, .month, .year, .hour], from: reservation.date)
        dateLabel.text = "\(reservation.date) "
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func rescheduleAction(_ sender: Any) {
        if reservatedService != nil{
            self.delegate?.didPressReschedule(actualReservation: reservatedService!)
        }
        
    }
    @IBAction func cancelAction(_ sender: Any) {
        if reservatedService != nil {
            self.delegate?.didCancelReservation(canceledReservation: reservatedService!)
        }
    }
}

