//
//  Pass+Parser.swift
//  ISSP Challenge
//
//  Created by MCS Devices on 12/7/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
extension Pass{
    static func parseJson(jsonData: [String: Any]) -> [Pass] {
        var results: [Pass] = []
        let response = jsonData[Constants.response] as! [[String: Any]]
        response.forEach {
            let risetime = $0[Constants.risetime] as! Int
            let duration = $0[Constants.duration] as! Int
            results.append(Pass(riseTime: String(risetime), duration: String(duration)))
        }
        return results
    }
}
