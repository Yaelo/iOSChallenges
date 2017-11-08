//
//  PersonCell.swift
//  randomStarWarsChars
//
//  Created by MCS Devices on 10/19/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var homeworldLabel: UILabel!
    @IBOutlet weak var genderImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
