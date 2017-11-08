//
//  Person.swift
//  randomStarWarsChars
//
//  Created by MCS Devices on 10/19/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
enum specie{
    case human
    case android
}
class Person {
    var birthYear: String?
    var eyeColor: String?
    var gender: String?
    var hairColor: String?
    var height: String?
    var homeworld: String?
    var mass: String?
    var name: String?
    var skinColor: String?
    var specie: String?
    
    init(){
    }
    init(birth: String, eyeColor: String, gender: String, hairColor: String, height: String, homeworld: String, mass: String, name: String, skinColor: String){
        self.birthYear = birth
        self.eyeColor = eyeColor
        self.gender = gender
        self.hairColor = hairColor
        self.height = height
        self.homeworld = homeworld
        self.mass = mass
        self.name = name
        self.skinColor = skinColor
    }
}
