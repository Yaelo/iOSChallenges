//
//  Constants.swift
//  ISSP Challenge
//
//  Created by MCS Devices on 12/7/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
struct Constants{
    static let baseUrl = "http://api.open-notify.org/iss-pass.json?lat=LAT&lon=LON"
    static let response = "response"
    static let risetime = "risetime"
    static let duration = "duration"
}
struct stubs{
    static let urlStub = "http://api.open-notify.org/iss-pass.json?lat=37.785834&lon=-122.406417"
    static let riseTimeStub = "1512689296"
    static let jsonResponseStub =
    """
{
  "message": "success",
  "request": {
    "altitude": 100,
    "datetime": 1512686626,
    "latitude": 37.785834,
    "longitude": -122.406417,
    "passes": 5
  },
  "response": [
    {
      "duration": 599,
      "risetime": 1512689296
    },
    {
      "duration": 487,
      "risetime": 1512695202
    },
    {
      "duration": 509,
      "risetime": 1512701061
    },
    {
      "duration": 621,
      "risetime": 1512706843
    },
    {
      "duration": 603,
      "risetime": 1512712636
    }
  ]
}
"""
}
