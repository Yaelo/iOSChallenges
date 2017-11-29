//
//  TableViewCell.swift
//  AlaskaAirlinesCSA
//
//  Created by MCS Devices on 11/17/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var flightNumberLabel: UILabel!
    @IBOutlet weak var airportCodeLabel: UILabel!
    @IBOutlet weak var arrivalTimeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func fillCell(flight: Flight, color: Int){
        flightNumberLabel.text = flight.flightId
        airportCodeLabel.text = flight.originCity
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        dateFormatter.timeZone = TimeZone.current
        arrivalTimeLabel.text = dateFormatter.string(from: flight.estimatedArrivalTime)
        //arrivalTimeLabel.text = flight.estimatedArrivalTime.description
        self.backgroundColor = color % 2 == 0 ? UIColor.white : UIColor.lightGray
    }
}
