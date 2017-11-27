//
//  InfiniteScrolliew.swift
//  Reservation
//
//  Created by MCS Devices on 11/13/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//
import Foundation
import UIKit

class InfiniteScrolliew: UIScrollView {
    override func setNeedsLayout() {
        super.setNeedsLayout()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        print("laySub")
        var curr = contentOffset
        if curr.x < 0 {
            curr.x = contentSize.width - frame.width
            contentOffset = curr
        } else if curr.x >= contentSize.width - frame.width {
            curr.x = 0
            contentOffset = curr
        }
    }

}
