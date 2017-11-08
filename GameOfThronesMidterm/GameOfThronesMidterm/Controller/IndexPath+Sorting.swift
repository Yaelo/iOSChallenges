//
//  IndexPath+Sorting.swift
//  GameOfThronesMidterm
//
//  Created by MCS Devices on 10/29/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
extension IndexPath {
    static func getSortedInexPathRows(indexPathArray: [IndexPath]) -> [Int] {
        var indexArray: [Int] = []
        indexPathArray.forEach {
            indexArray.append($0.row)
        }
        return indexArray.sorted(by: > )
    }
}
