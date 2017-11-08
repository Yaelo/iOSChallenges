//
//  Person+Parse.swift
//  randomStarWarsChars
//
//  Created by MCS Devices on 10/20/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
extension Person{
    static func parser(downloadedArray: [String: Any]) -> Person{
        let parsedPerson = Person()
        parsedPerson.name = downloadedArray[constants.nameID] as? String
        parsedPerson.height = downloadedArray[constants.heightID] as? String
        parsedPerson.mass = downloadedArray[constants.massID] as? String
        parsedPerson.hairColor = downloadedArray[constants.hairColorID] as? String
        parsedPerson.skinColor = downloadedArray[constants.skinColorID] as? String
        parsedPerson.eyeColor = downloadedArray[constants.eyeColorID] as? String
        parsedPerson.birthYear = downloadedArray[constants.birthYearID] as? String
        parsedPerson.gender = downloadedArray[constants.genderID] as? String
        parsedPerson.homeworld = downloadedArray[constants.homeworldID] as? String
        if let specie = downloadedArray[constants.speciesID] as? [String] {
            if let specieThing = specie.first {
                parsedPerson.specie = specieThing.replacingOccurrences(of: constants.speciesDataURL, with: "")
                parsedPerson.specie = parsedPerson.specie?.replacingOccurrences(of: "/", with: "")
                print(parsedPerson.specie)
            }else{
                print("\n\n\nempty\n\n\n")
            }
        }else{
            print("\n\n\nempty\n\n\n")
        }
        print(downloadedArray["url"] as? String)
        return parsedPerson
    }
    static func parseSpecie(downloadedDictionary: [String: Any]) -> [String]{
        var species: [String] = []
        let prueba = downloadedDictionary[constants.results] as? [String: Any]
        print(prueba)
        if let results = downloadedDictionary[constants.results] as? [String: Any]{
            results.forEach{_ in
                if let name = results[constants.nameID] as? String{
                    species.append(name)
                }
            }
            
            print("\n\n\n\n\(species.count)\n\n\n\n")
        }
        return species
    }
}
