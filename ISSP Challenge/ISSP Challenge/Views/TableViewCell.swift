//
//  TableViewCell.swift
//  ISSP Challenge
//
//  Created by MCS Devices on 12/7/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var riseTimeLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func fillCell(pass: Pass){
        riseTimeLabel.text = TableViewCell.getDateFormattedString(pass.riseTime)
        durationLabel.text = "\(pass.duration) Segs"
    }
    static func getDateFormattedString(_ dateText: String) -> String{
        let dateFormmater = DateFormatter()
        dateFormmater.dateStyle = .medium
        dateFormmater.dateFormat = "yyyy-MMM-dd HH:mm 'hrs'"
        if let myDate = Double(dateText){
            return dateFormmater.string(from: Date(timeIntervalSince1970: myDate))
        } else {
            return "rise time couldn't be converted"
        }
    }
}
