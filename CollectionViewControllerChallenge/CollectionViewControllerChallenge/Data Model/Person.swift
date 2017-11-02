//
//  Person.swift
//  CollectionViewControllerChallenge
//
//  Created by MCS Devices on 11/1/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
class Person {
    var first: String
    var middle: String
    var last: String
    var age: Int
    init(first: String, middle: String, last: String, age: Int){
        self.first = first
        self.middle = middle
        self.last = last
        self.age = age
    }
}
