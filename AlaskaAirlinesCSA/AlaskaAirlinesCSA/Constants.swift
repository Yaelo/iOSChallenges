//
//  Constants.swift
//  AlaskaAirlinesCSA
//
//  Created by MCS Devices on 11/17/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
struct Constants {
    static let baseURL = "https://api.qa.alaskaair.com/1/airports/"
    static let header = "Authorization" 
    static let headerValue = "Basic YWFnZTQxNDAxMjgwODYyNDk3NWFiYWNhZjlhNjZjMDRlMWY6ODYyYTk0NTFhYjliNGY1M2EwZWJiOWI2ZWQ1ZjYwOGM="
    
    static let flightID = "FltId"
    static let Orig = "Orig"
    static let Dest = "Dest"
    static let SchedArrTime = "SchedArrTime"
    static let EstArrTime = "EstArrTime"
    static let UTCDestinationOffset = "DestZuluOffset"
}
struct testConstants{
    static let jsonString = """
[
    {
        "FltId": "146",
        "Carrier": "AS",
        "Orig": "ANC",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T01:25:00",
        "EstDepTime": "2017-11-17T01:25:00",
        "SchedArrTime": "2017-11-17T05:53:00",
        "EstArrTime": "2017-11-17T05:32:00",
        "ActualTime": "",
        "OrigZuluOffset": "-9",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "C4",
        "CodeShares": [
            {
                "FltId": "6999",
                "Carrier": "AA"
            }
        ],
        "TailId": "611",
        "FleetType": "737-700W",
        "Status": ""
    },
    {
        "FltId": "128",
        "Carrier": "AS",
        "Orig": "FAI",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T01:20:00",
        "EstDepTime": "2017-11-17T01:20:00",
        "SchedArrTime": "2017-11-17T06:00:00",
        "EstArrTime": "2017-11-17T05:39:00",
        "ActualTime": "",
        "OrigZuluOffset": "-9",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "2",
        "CodeShares": [
            {
                "FltId": "6983,6218",
                "Carrier": "AA,KE"
            }
        ],
        "TailId": "315",
        "FleetType": "737-900W",
        "Status": ""
    },
    {
        "FltId": "2001",
        "Carrier": "QX",
        "Orig": "YKM",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T05:00:00",
        "EstDepTime": "2017-11-17T05:00:00",
        "SchedArrTime": "2017-11-17T05:41:00",
        "EstArrTime": "2017-11-17T05:41:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "HG",
        "CodeShares": [
            {
                "FltId": "9651",
                "Carrier": "AF"
            }
        ],
        "TailId": "404",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "816",
        "Carrier": "AS",
        "Orig": "LIH",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-16T22:00:00",
        "EstDepTime": "2017-11-16T22:10:00",
        "SchedArrTime": "2017-11-17T05:51:00",
        "EstArrTime": "2017-11-17T05:41:00",
        "ActualTime": "",
        "OrigZuluOffset": "-10",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "8",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "560",
        "FleetType": "737-800E",
        "Status": ""
    },
    {
        "FltId": "3415",
        "Carrier": "OO",
        "Orig": "BLI",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T05:00:00",
        "EstDepTime": "2017-11-17T05:00:00",
        "SchedArrTime": "2017-11-17T05:47:00",
        "EstArrTime": "2017-11-17T05:43:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "A",
        "CodeShares": [
            {
                "FltId": "7563",
                "Carrier": "AA"
            }
        ],
        "TailId": "902",
        "FleetType": "CRJ-200",
        "Status": ""
    },
    {
        "FltId": "2123",
        "Carrier": "QX",
        "Orig": "ALW",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T05:00:00",
        "EstDepTime": "2017-11-17T05:00:00",
        "SchedArrTime": "2017-11-17T06:07:00",
        "EstArrTime": "2017-11-17T06:07:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "HG",
        "CodeShares": [
            {
                "FltId": "7486",
                "Carrier": "AA"
            }
        ],
        "TailId": "432",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "108",
        "Carrier": "AS",
        "Orig": "ANC",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T01:30:00",
        "EstDepTime": "2017-11-17T01:30:00",
        "SchedArrTime": "2017-11-17T05:57:00",
        "EstArrTime": "2017-11-17T06:09:00",
        "ActualTime": "",
        "OrigZuluOffset": "-9",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "C3",
        "CodeShares": [
            {
                "FltId": "6928",
                "Carrier": "AA"
            }
        ],
        "TailId": "278",
        "FleetType": "737-900R",
        "Status": ""
    },
    {
        "FltId": "3451",
        "Carrier": "OO",
        "Orig": "PSC",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T05:12:00",
        "EstDepTime": "2017-11-17T05:12:00",
        "SchedArrTime": "2017-11-17T06:11:00",
        "EstArrTime": "2017-11-17T06:11:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "HG",
        "CodeShares": [
            {
                "FltId": "7625",
                "Carrier": "AA"
            }
        ],
        "TailId": "693",
        "FleetType": "CRJ-200",
        "Status": "ON TIME"
    },
    {
        "FltId": "695",
        "Carrier": "AS",
        "Orig": "GEG",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T05:00:00",
        "EstDepTime": "2017-11-17T05:00:00",
        "SchedArrTime": "2017-11-17T06:12:00",
        "EstArrTime": "2017-11-17T06:12:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "C30",
        "CodeShares": [
            {
                "FltId": "6881",
                "Carrier": "AA"
            }
        ],
        "TailId": "318",
        "FleetType": "737-900W",
        "Status": "ON TIME"
    },
    {
        "FltId": "2067",
        "Carrier": "QX",
        "Orig": "PUW",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T05:00:00",
        "EstDepTime": "2017-11-17T05:00:00",
        "SchedArrTime": "2017-11-17T06:12:00",
        "EstArrTime": "2017-11-17T06:12:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "HG",
        "CodeShares": [
            {
                "FltId": "7492,9647,6238",
                "Carrier": "AA,AF,KE"
            }
        ],
        "TailId": "403",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "878",
        "Carrier": "AS",
        "Orig": "OGG",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-16T22:55:00",
        "EstDepTime": "2017-11-16T22:55:00",
        "SchedArrTime": "2017-11-17T06:41:00",
        "EstArrTime": "2017-11-17T06:12:00",
        "ActualTime": "",
        "OrigZuluOffset": "-10",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "5",
        "CodeShares": [
            {
                "FltId": "2830",
                "Carrier": "BA"
            }
        ],
        "TailId": "529",
        "FleetType": "737-800E",
        "Status": ""
    },
    {
        "FltId": "2073",
        "Carrier": "QX",
        "Orig": "YYJ",
        "Dest": "SEA",
        "CutOffTime": "60",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T05:35:00",
        "EstDepTime": "2017-11-17T05:35:00",
        "SchedArrTime": "2017-11-17T06:19:00",
        "EstArrTime": "2017-11-17T06:19:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "5",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "409",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "860",
        "Carrier": "AS",
        "Orig": "HNL",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-16T22:45:00",
        "EstDepTime": "2017-11-16T22:45:00",
        "SchedArrTime": "2017-11-17T06:38:00",
        "EstArrTime": "2017-11-17T06:21:00",
        "ActualTime": "",
        "OrigZuluOffset": "-10",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "14",
        "CodeShares": [
            {
                "FltId": "2824,3757",
                "Carrier": "BA,QF"
            }
        ],
        "TailId": "512",
        "FleetType": "737-800E",
        "Status": ""
    },
    {
        "FltId": "423",
        "Carrier": "AS",
        "Orig": "PDX",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T05:50:00",
        "EstDepTime": "2017-11-17T05:50:00",
        "SchedArrTime": "2017-11-17T06:47:00",
        "EstArrTime": "2017-11-17T06:30:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "C2",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "260",
        "FleetType": "737-900R",
        "Status": ""
    },
    {
        "FltId": "2289",
        "Carrier": "QX",
        "Orig": "FCA",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:00:00",
        "EstDepTime": "2017-11-17T06:00:00",
        "SchedArrTime": "2017-11-17T06:35:00",
        "EstArrTime": "2017-11-17T06:35:00",
        "ActualTime": "",
        "OrigZuluOffset": "-7",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "1A",
        "CodeShares": [
            {
                "FltId": "7581,6032",
                "Carrier": "AA,KE"
            }
        ],
        "TailId": "427",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "156",
        "Carrier": "AS",
        "Orig": "ANC",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T02:15:00",
        "EstDepTime": "2017-11-17T02:15:00",
        "SchedArrTime": "2017-11-17T06:44:00",
        "EstArrTime": "2017-11-17T06:36:00",
        "ActualTime": "",
        "OrigZuluOffset": "-9",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "C5",
        "CodeShares": [
            {
                "FltId": "6790",
                "Carrier": "AA"
            }
        ],
        "TailId": "237",
        "FleetType": "737-900R",
        "Status": ""
    },
    {
        "FltId": "2155",
        "Carrier": "QX",
        "Orig": "EAT",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T05:58:00",
        "EstDepTime": "2017-11-17T05:58:00",
        "SchedArrTime": "2017-11-17T06:40:00",
        "EstArrTime": "2017-11-17T06:40:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "HG",
        "CodeShares": [
            {
                "FltId": "7488",
                "Carrier": "AA"
            }
        ],
        "TailId": "408",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "880",
        "Carrier": "AS",
        "Orig": "KOA",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-16T23:05:00",
        "EstDepTime": "2017-11-16T23:05:00",
        "SchedArrTime": "2017-11-17T07:00:00",
        "EstArrTime": "2017-11-17T06:46:00",
        "ActualTime": "",
        "OrigZuluOffset": "-10",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "7",
        "CodeShares": [
            {
                "FltId": "2828",
                "Carrier": "BA"
            }
        ],
        "TailId": "533",
        "FleetType": "737-800E",
        "Status": ""
    },
    {
        "FltId": "2319",
        "Carrier": "QX",
        "Orig": "MSO",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:00:00",
        "EstDepTime": "2017-11-17T06:00:00",
        "SchedArrTime": "2017-11-17T06:48:00",
        "EstArrTime": "2017-11-17T06:48:00",
        "ActualTime": "",
        "OrigZuluOffset": "-7",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "5",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "433",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "964",
        "Carrier": "AS",
        "Orig": "YVR",
        "Dest": "SEA",
        "CutOffTime": "60",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:00:00",
        "EstDepTime": "2017-11-17T06:00:00",
        "SchedArrTime": "2017-11-17T06:53:00",
        "EstArrTime": "2017-11-17T06:53:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "E83",
        "CodeShares": [
            {
                "FltId": "6841,6156",
                "Carrier": "AA,KE"
            }
        ],
        "TailId": "517",
        "FleetType": "737-800E",
        "Status": "ON TIME"
    },
    {
        "FltId": "2731",
        "Carrier": "QX",
        "Orig": "YYC",
        "Dest": "SEA",
        "CutOffTime": "60",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:00:00",
        "EstDepTime": "2017-11-17T06:00:00",
        "SchedArrTime": "2017-11-17T06:55:00",
        "EstArrTime": "2017-11-17T06:55:00",
        "ActualTime": "",
        "OrigZuluOffset": "-7",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "HG",
        "CodeShares": [
            {
                "FltId": "6149",
                "Carrier": "KE"
            }
        ],
        "TailId": "622",
        "FleetType": "E175",
        "Status": "ON TIME"
    },
    {
        "FltId": "3419",
        "Carrier": "OO",
        "Orig": "BOI",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:16:00",
        "EstDepTime": "2017-11-17T06:16:00",
        "SchedArrTime": "2017-11-17T06:59:00",
        "EstArrTime": "2017-11-17T06:59:00",
        "ActualTime": "",
        "OrigZuluOffset": "-7",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "C6",
        "CodeShares": [
            {
                "FltId": "7557",
                "Carrier": "AA"
            }
        ],
        "TailId": "194",
        "FleetType": "E175",
        "Status": "ON TIME"
    },
    {
        "FltId": "2276",
        "Carrier": "QX",
        "Orig": "EUG",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T05:45:00",
        "EstDepTime": "2017-11-17T05:45:00",
        "SchedArrTime": "2017-11-17T06:59:00",
        "EstArrTime": "2017-11-17T06:59:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "HG",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "440",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "430",
        "Carrier": "AS",
        "Orig": "BLI",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:10:00",
        "EstDepTime": "2017-11-17T06:10:00",
        "SchedArrTime": "2017-11-17T06:59:00",
        "EstArrTime": "2017-11-17T06:59:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "B",
        "CodeShares": [
            {
                "FltId": "6941,9635",
                "Carrier": "AA,AF"
            }
        ],
        "TailId": "552",
        "FleetType": "737-800",
        "Status": "ON TIME"
    },
    {
        "FltId": "2294",
        "Carrier": "QX",
        "Orig": "RDM",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:08:00",
        "EstDepTime": "2017-11-17T06:08:00",
        "SchedArrTime": "2017-11-17T07:19:00",
        "EstArrTime": "2017-11-17T07:19:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "HG",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "413",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "2452",
        "Carrier": "QX",
        "Orig": "MFR",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T05:50:00",
        "EstDepTime": "2017-11-17T05:50:00",
        "SchedArrTime": "2017-11-17T07:20:00",
        "EstArrTime": "2017-11-17T07:20:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "1",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "436",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "2487",
        "Carrier": "QX",
        "Orig": "GEG",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:10:00",
        "EstDepTime": "2017-11-17T06:10:00",
        "SchedArrTime": "2017-11-17T07:25:00",
        "EstArrTime": "2017-11-17T07:25:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "C24",
        "CodeShares": [
            {
                "FltId": "7502",
                "Carrier": "AA"
            }
        ],
        "TailId": "428",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "2493",
        "Carrier": "QX",
        "Orig": "YLW",
        "Dest": "SEA",
        "CutOffTime": "60",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:07:00",
        "EstDepTime": "2017-11-17T06:07:00",
        "SchedArrTime": "2017-11-17T07:30:00",
        "EstArrTime": "2017-11-17T07:30:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "HG",
        "CodeShares": [
            {
                "FltId": "9631,3049,6176,3752",
                "Carrier": "AF,EK,KE,QF"
            }
        ],
        "TailId": "447",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "2328",
        "Carrier": "QX",
        "Orig": "PDX",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:51:00",
        "EstDepTime": "2017-11-17T06:51:00",
        "SchedArrTime": "2017-11-17T07:44:00",
        "EstArrTime": "2017-11-17T07:44:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "A4",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "401",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "181",
        "Carrier": "AS",
        "Orig": "SMF",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:00:00",
        "EstDepTime": "2017-11-17T06:00:00",
        "SchedArrTime": "2017-11-17T07:57:00",
        "EstArrTime": "2017-11-17T07:50:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "B7",
        "CodeShares": [
            {
                "FltId": "6904",
                "Carrier": "AA"
            }
        ],
        "TailId": "528",
        "FleetType": "737-800",
        "Status": ""
    },
    {
        "FltId": "683",
        "Carrier": "AS",
        "Orig": "MCI",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:00:00",
        "EstDepTime": "2017-11-17T05:55:00",
        "SchedArrTime": "2017-11-17T07:59:00",
        "EstArrTime": "2017-11-17T08:04:00",
        "ActualTime": "",
        "OrigZuluOffset": "-6",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "52",
        "CodeShares": [
            {
                "FltId": "3035",
                "Carrier": "EK"
            }
        ],
        "TailId": "527",
        "FleetType": "737-800",
        "Status": ""
    },
    {
        "FltId": "27",
        "Carrier": "AS",
        "Orig": "ORD",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:00:00",
        "EstDepTime": "2017-11-17T06:00:00",
        "SchedArrTime": "2017-11-17T08:38:00",
        "EstArrTime": "2017-11-17T08:05:00",
        "ActualTime": "",
        "OrigZuluOffset": "-6",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "H4",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "305",
        "FleetType": "737-900",
        "Status": ""
    },
    {
        "FltId": "369",
        "Carrier": "AS",
        "Orig": "DEN",
        "Dest": "SEA",
        "CutOffTime": "45",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:10:00",
        "EstDepTime": "2017-11-17T06:10:00",
        "SchedArrTime": "2017-11-17T08:22:00",
        "EstArrTime": "2017-11-17T08:09:00",
        "ActualTime": "",
        "OrigZuluOffset": "-7",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "C39",
        "CodeShares": [
            {
                "FltId": "6030",
                "Carrier": "KE"
            }
        ],
        "TailId": "457",
        "FleetType": "737-900E",
        "Status": ""
    },
    {
        "FltId": "345",
        "Carrier": "AS",
        "Orig": "OAK",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:10:00",
        "EstDepTime": "2017-11-17T06:10:00",
        "SchedArrTime": "2017-11-17T08:15:00",
        "EstArrTime": "2017-11-17T08:12:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "10",
        "CodeShares": [
            {
                "FltId": "6931",
                "Carrier": "AA"
            }
        ],
        "TailId": "514",
        "FleetType": "737-800E",
        "Status": ""
    },
    {
        "FltId": "403",
        "Carrier": "AS",
        "Orig": "LAX",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T05:30:00",
        "EstDepTime": "2017-11-17T05:30:00",
        "SchedArrTime": "2017-11-17T08:28:00",
        "EstArrTime": "2017-11-17T08:12:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "67",
        "CodeShares": [
            {
                "FltId": "6104",
                "Carrier": "KE"
            }
        ],
        "TailId": "525",
        "FleetType": "737-800",
        "Status": ""
    },
    {
        "FltId": "401",
        "Carrier": "AS",
        "Orig": "LAS",
        "Dest": "SEA",
        "CutOffTime": "45",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:00:00",
        "EstDepTime": "2017-11-17T06:00:00",
        "SchedArrTime": "2017-11-17T08:45:00",
        "EstArrTime": "2017-11-17T08:18:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "E15",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "524",
        "FleetType": "737-800",
        "Status": ""
    },
    {
        "FltId": "2075",
        "Carrier": "QX",
        "Orig": "YYJ",
        "Dest": "SEA",
        "CutOffTime": "60",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T07:39:00",
        "EstDepTime": "2017-11-17T07:39:00",
        "SchedArrTime": "2017-11-17T08:26:00",
        "EstArrTime": "2017-11-17T08:26:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "5",
        "CodeShares": [
            {
                "FltId": "2854,3153,6172",
                "Carrier": "BA,EK,KE"
            }
        ],
        "TailId": "412",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "2684",
        "Carrier": "QX",
        "Orig": "PDX",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T07:35:00",
        "EstDepTime": "2017-11-17T07:35:00",
        "SchedArrTime": "2017-11-17T08:30:00",
        "EstArrTime": "2017-11-17T08:30:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "A9",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "620",
        "FleetType": "E175",
        "Status": "ON TIME"
    },
    {
        "FltId": "545",
        "Carrier": "AS",
        "Orig": "ONT",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:00:00",
        "EstDepTime": "2017-11-17T06:00:00",
        "SchedArrTime": "2017-11-17T08:46:00",
        "EstArrTime": "2017-11-17T08:33:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "HG",
        "CodeShares": [
            {
                "FltId": "7050",
                "Carrier": "AA"
            }
        ],
        "TailId": "265",
        "FleetType": "737-900R",
        "Status": ""
    },
    {
        "FltId": "2381",
        "Carrier": "QX",
        "Orig": "GEG",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T07:20:00",
        "EstDepTime": "2017-11-17T07:20:00",
        "SchedArrTime": "2017-11-17T08:35:00",
        "EstArrTime": "2017-11-17T08:35:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "C25",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "443",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "321",
        "Carrier": "AS",
        "Orig": "SJC",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:30:00",
        "EstDepTime": "2017-11-17T06:30:00",
        "SchedArrTime": "2017-11-17T08:42:00",
        "EstArrTime": "2017-11-17T08:36:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "27",
        "CodeShares": [
            {
                "FltId": "6818,3079",
                "Carrier": "AA,EK"
            }
        ],
        "TailId": "594",
        "FleetType": "737-800E",
        "Status": ""
    },
    {
        "FltId": "307",
        "Carrier": "AS",
        "Orig": "SFO",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:30:00",
        "EstDepTime": "2017-11-17T06:30:00",
        "SchedArrTime": "2017-11-17T08:41:00",
        "EstArrTime": "2017-11-17T08:38:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "50A",
        "CodeShares": [
            {
                "FltId": "6827,3123,6114",
                "Carrier": "AA,EK,KE"
            }
        ],
        "TailId": "453",
        "FleetType": "737-900E",
        "Status": ""
    },
    {
        "FltId": "176",
        "Carrier": "AS",
        "Orig": "JNU",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T05:15:00",
        "EstDepTime": "2017-11-17T05:15:00",
        "SchedArrTime": "2017-11-17T08:42:00",
        "EstArrTime": "2017-11-17T08:42:00",
        "ActualTime": "",
        "OrigZuluOffset": "-9",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "4",
        "CodeShares": [
            {
                "FltId": "6872,6052",
                "Carrier": "AA,KE"
            }
        ],
        "TailId": "434",
        "FleetType": "737-900E",
        "Status": "ON TIME"
    },
    {
        "FltId": "85",
        "Carrier": "AS",
        "Orig": "ATL",
        "Dest": "SEA",
        "CutOffTime": "45",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:15:00",
        "EstDepTime": "2017-11-17T06:15:00",
        "SchedArrTime": "2017-11-17T08:45:00",
        "EstArrTime": "2017-11-17T08:43:00",
        "ActualTime": "",
        "OrigZuluOffset": "-5",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "D3",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "251",
        "FleetType": "737-900R",
        "Status": ""
    },
    {
        "FltId": "723",
        "Carrier": "AS",
        "Orig": "DFW",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:20:00",
        "EstDepTime": "2017-11-17T06:15:00",
        "SchedArrTime": "2017-11-17T08:36:00",
        "EstArrTime": "2017-11-17T08:43:00",
        "ActualTime": "",
        "OrigZuluOffset": "-6",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "E11",
        "CodeShares": [
            {
                "FltId": "6120",
                "Carrier": "KE"
            }
        ],
        "TailId": "486",
        "FleetType": "737-900E",
        "Status": ""
    },
    {
        "FltId": "3489",
        "Carrier": "OO",
        "Orig": "FAT",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:05:00",
        "EstDepTime": "2017-11-17T06:05:00",
        "SchedArrTime": "2017-11-17T08:45:00",
        "EstArrTime": "2017-11-17T08:45:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "8",
        "CodeShares": [
            {
                "FltId": "3272",
                "Carrier": "EK"
            }
        ],
        "TailId": "594",
        "FleetType": "CRJ-200",
        "Status": "ON TIME"
    },
    {
        "FltId": "3333",
        "Carrier": "OO",
        "Orig": "BZN",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T07:29:00",
        "EstDepTime": "2017-11-17T07:29:00",
        "SchedArrTime": "2017-11-17T08:47:00",
        "EstArrTime": "2017-11-17T08:47:00",
        "ActualTime": "",
        "OrigZuluOffset": "-7",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "HG",
        "CodeShares": [
            {
                "FltId": "3259",
                "Carrier": "EK"
            }
        ],
        "TailId": "477",
        "FleetType": "CRJ-200",
        "Status": "ON TIME"
    },
    {
        "FltId": "2433",
        "Carrier": "QX",
        "Orig": "BIL",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T07:12:00",
        "EstDepTime": "2017-11-17T07:12:00",
        "SchedArrTime": "2017-11-17T08:48:00",
        "EstArrTime": "2017-11-17T08:48:00",
        "ActualTime": "",
        "OrigZuluOffset": "-7",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "B3",
        "CodeShares": [
            {
                "FltId": "6234",
                "Carrier": "KE"
            }
        ],
        "TailId": "415",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "631",
        "Carrier": "AS",
        "Orig": "PHX",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:45:00",
        "EstDepTime": "2017-11-17T06:45:00",
        "SchedArrTime": "2017-11-17T08:54:00",
        "EstArrTime": "2017-11-17T08:51:00",
        "ActualTime": "",
        "OrigZuluOffset": "-7",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "11",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "440",
        "FleetType": "737-900E",
        "Status": ""
    },
    {
        "FltId": "347",
        "Carrier": "AS",
        "Orig": "IAH",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:10:00",
        "EstDepTime": "2017-11-17T06:10:00",
        "SchedArrTime": "2017-11-17T08:54:00",
        "EstArrTime": "2017-11-17T08:54:00",
        "ActualTime": "",
        "OrigZuluOffset": "-6",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "A8",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "253",
        "FleetType": "737-900R",
        "Status": "ON TIME"
    },
    {
        "FltId": "2651",
        "Carrier": "QX",
        "Orig": "GEG",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T07:40:00",
        "EstDepTime": "2017-11-17T07:40:00",
        "SchedArrTime": "2017-11-17T08:55:00",
        "EstArrTime": "2017-11-17T08:55:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "C23",
        "CodeShares": [
            {
                "FltId": "7507",
                "Carrier": "AA"
            }
        ],
        "TailId": "406",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "733",
        "Carrier": "AS",
        "Orig": "AUS",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:30:00",
        "EstDepTime": "2017-11-17T06:30:00",
        "SchedArrTime": "2017-11-17T08:57:00",
        "EstArrTime": "2017-11-17T08:57:00",
        "ActualTime": "",
        "OrigZuluOffset": "-6",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "25",
        "CodeShares": [
            {
                "FltId": "6130",
                "Carrier": "KE"
            }
        ],
        "TailId": "472",
        "FleetType": "737-900E",
        "Status": "ON TIME"
    },
    {
        "FltId": "39",
        "Carrier": "AS",
        "Orig": "MSP",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T07:00:00",
        "EstDepTime": "2017-11-17T07:00:00",
        "SchedArrTime": "2017-11-17T09:00:00",
        "EstArrTime": "2017-11-17T09:00:00",
        "ActualTime": "",
        "OrigZuluOffset": "-6",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "E1",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "307",
        "FleetType": "737-900W",
        "Status": "ON TIME"
    },
    {
        "FltId": "3421",
        "Carrier": "OO",
        "Orig": "BOI",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T08:20:00",
        "EstDepTime": "2017-11-17T08:20:00",
        "SchedArrTime": "2017-11-17T09:03:00",
        "EstArrTime": "2017-11-17T09:03:00",
        "ActualTime": "",
        "OrigZuluOffset": "-7",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "C5",
        "CodeShares": [
            {
                "FltId": "7636",
                "Carrier": "AA"
            }
        ],
        "TailId": "177",
        "FleetType": "E175",
        "Status": "ON TIME"
    },
    {
        "FltId": "2060",
        "Carrier": "QX",
        "Orig": "EUG",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T07:49:00",
        "EstDepTime": "2017-11-17T07:49:00",
        "SchedArrTime": "2017-11-17T09:03:00",
        "EstArrTime": "2017-11-17T09:03:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "HG",
        "CodeShares": [
            {
                "FltId": "7526,3281,6028",
                "Carrier": "AA,EK,KE"
            }
        ],
        "TailId": "441",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "3341",
        "Carrier": "OO",
        "Orig": "RNO",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:44:00",
        "EstDepTime": "2017-11-17T06:44:00",
        "SchedArrTime": "2017-11-17T09:05:00",
        "EstArrTime": "2017-11-17T09:05:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "C6",
        "CodeShares": [
            {
                "FltId": "3292",
                "Carrier": "EK"
            }
        ],
        "TailId": "930",
        "FleetType": "CRJ-200",
        "Status": "ON TIME"
    },
    {
        "FltId": "96",
        "Carrier": "AS",
        "Orig": "ANC",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T05:00:00",
        "EstDepTime": "2017-11-17T05:00:00",
        "SchedArrTime": "2017-11-17T09:29:00",
        "EstArrTime": "2017-11-17T09:06:00",
        "ActualTime": "",
        "OrigZuluOffset": "-9",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "C4",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "431",
        "FleetType": "737-900E",
        "Status": ""
    },
    {
        "FltId": "2846",
        "Carrier": "QX",
        "Orig": "PDX",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T08:15:00",
        "EstDepTime": "2017-11-17T08:15:00",
        "SchedArrTime": "2017-11-17T09:10:00",
        "EstArrTime": "2017-11-17T09:10:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "A3",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "630",
        "FleetType": "E175",
        "Status": "ON TIME"
    },
    {
        "FltId": "471",
        "Carrier": "AS",
        "Orig": "SAN",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:20:00",
        "EstDepTime": "2017-11-17T06:20:00",
        "SchedArrTime": "2017-11-17T09:25:00",
        "EstArrTime": "2017-11-17T09:15:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "12",
        "CodeShares": [
            {
                "FltId": "6830,3099,6124",
                "Carrier": "AA,EK,KE"
            }
        ],
        "TailId": "459",
        "FleetType": "737-900E",
        "Status": ""
    },
    {
        "FltId": "3480",
        "Carrier": "OO",
        "Orig": "PDX",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T08:00:00",
        "EstDepTime": "2017-11-17T08:00:00",
        "SchedArrTime": "2017-11-17T09:15:00",
        "EstArrTime": "2017-11-17T09:15:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "A5",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "951",
        "FleetType": "CRJ-200",
        "Status": "ON TIME"
    },
    {
        "FltId": "453",
        "Carrier": "AS",
        "Orig": "LAX",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:30:00",
        "EstDepTime": "2017-11-17T06:30:00",
        "SchedArrTime": "2017-11-17T09:30:00",
        "EstArrTime": "2017-11-17T09:17:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "62",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "270",
        "FleetType": "737-900R",
        "Status": ""
    },
    {
        "FltId": "2228",
        "Carrier": "QX",
        "Orig": "PDX",
        "Dest": "SEA",
        "CutOffTime": "40",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T08:25:00",
        "EstDepTime": "2017-11-17T08:25:00",
        "SchedArrTime": "2017-11-17T09:20:00",
        "EstArrTime": "2017-11-17T09:20:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "A6",
        "CodeShares": [
            {
                "FltId": "6012",
                "Carrier": "KE"
            }
        ],
        "TailId": "449",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "31",
        "Carrier": "AS",
        "Orig": "EWR",
        "Dest": "SEA",
        "CutOffTime": "45",
        "FltDirection": 0,
        "SchedDepTime": "2017-11-17T06:00:00",
        "EstDepTime": "2017-11-17T06:00:00",
        "SchedArrTime": "2017-11-17T09:04:00",
        "EstArrTime": "2017-11-17T09:25:00",
        "ActualTime": "",
        "OrigZuluOffset": "-5",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "A30",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "247",
        "FleetType": "737-900R",
        "Status": ""
    },
    {
        "FltId": "770",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "TPA",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T07:30:00",
        "EstDepTime": "2017-11-17T07:30:00",
        "SchedArrTime": "2017-11-17T16:01:00",
        "EstArrTime": "2017-11-17T15:23:00",
        "ActualTime": "07:25 AM",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-5",
        "DestGate": "A11",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "584",
        "FleetType": "737-800E",
        "Status": "ON TIME"
    },
    {
        "FltId": "83",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "ANC",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T07:35:00",
        "EstDepTime": "2017-11-17T07:35:00",
        "SchedArrTime": "2017-11-17T10:17:00",
        "EstArrTime": "2017-11-17T10:16:00",
        "ActualTime": "07:23 AM",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-9",
        "DestGate": "C4",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "408",
        "FleetType": "737-900E",
        "Status": "ON TIME"
    },
    {
        "FltId": "32",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "PHL",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T07:35:00",
        "EstDepTime": "2017-11-17T07:35:00",
        "SchedArrTime": "2017-11-17T15:47:00",
        "EstArrTime": "2017-11-17T15:26:00",
        "ActualTime": "07:31 AM",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-5",
        "DestGate": "D6",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "478",
        "FleetType": "737-900E",
        "Status": "ON TIME"
    },
    {
        "FltId": "690",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "GEG",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T07:38:00",
        "EstDepTime": "2017-11-17T07:38:00",
        "SchedArrTime": "2017-11-17T08:44:00",
        "EstArrTime": "2017-11-17T08:44:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "C30",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "303",
        "FleetType": "737-900",
        "Status": "ON TIME"
    },
    {
        "FltId": "734",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "BNA",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T07:40:00",
        "EstDepTime": "2017-11-17T07:40:00",
        "SchedArrTime": "2017-11-17T13:59:00",
        "EstArrTime": "2017-11-17T13:34:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-6",
        "DestGate": "B8",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "237",
        "FleetType": "737-900R",
        "Status": "ON TIME"
    },
    {
        "FltId": "2348",
        "Carrier": "QX",
        "Orig": "SEA",
        "Dest": "MSO",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T07:40:00",
        "EstDepTime": "2017-11-17T07:40:00",
        "SchedArrTime": "2017-11-17T10:04:00",
        "EstArrTime": "2017-11-17T10:04:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-7",
        "DestGate": "5",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "403",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "2389",
        "Carrier": "QX",
        "Orig": "SEA",
        "Dest": "RDM",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T07:40:00",
        "EstDepTime": "2017-11-17T07:40:00",
        "SchedArrTime": "2017-11-17T08:46:00",
        "EstArrTime": "2017-11-17T08:46:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "HG",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "433",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "506",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "SNA",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T07:45:00",
        "EstDepTime": "2017-11-17T07:40:00",
        "SchedArrTime": "2017-11-17T10:27:00",
        "EstArrTime": "2017-11-17T10:15:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "11",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "6946",
                "Carrier": "AA"
            }
        ],
        "TailId": "548",
        "FleetType": "737-800",
        "Status": ""
    },
    {
        "FltId": "728",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "CHS",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T07:45:00",
        "EstDepTime": "2017-11-17T07:45:00",
        "SchedArrTime": "2017-11-17T16:00:00",
        "EstArrTime": "2017-11-17T15:24:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-5",
        "DestGate": "B10",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "553",
        "FleetType": "737-800",
        "Status": "ON TIME"
    },
    {
        "FltId": "2768",
        "Carrier": "QX",
        "Orig": "SEA",
        "Dest": "SBP",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T07:48:00",
        "EstDepTime": "2017-11-17T07:48:00",
        "SchedArrTime": "2017-11-17T10:26:00",
        "EstArrTime": "2017-11-17T10:26:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "2",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "622",
        "FleetType": "E175",
        "Status": "ON TIME"
    },
    {
        "FltId": "16",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "MCO",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T07:50:00",
        "EstDepTime": "2017-11-17T07:50:00",
        "SchedArrTime": "2017-11-17T16:16:00",
        "EstArrTime": "2017-11-17T15:44:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-5",
        "DestGate": "111",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "278",
        "FleetType": "737-900R",
        "Status": "ON TIME"
    },
    {
        "FltId": "792",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "DTW",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T07:50:00",
        "EstDepTime": "2017-11-17T07:50:00",
        "SchedArrTime": "2017-11-17T15:09:00",
        "EstArrTime": "2017-11-17T14:50:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-5",
        "DestGate": "D9",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "552",
        "FleetType": "737-800",
        "Status": "ON TIME"
    },
    {
        "FltId": "2441",
        "Carrier": "QX",
        "Orig": "SEA",
        "Dest": "RNO",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T07:52:00",
        "EstDepTime": "2017-11-17T07:52:00",
        "SchedArrTime": "2017-11-17T09:47:00",
        "EstArrTime": "2017-11-17T09:47:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "C6",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "6231",
                "Carrier": "KE"
            }
        ],
        "TailId": "409",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "218",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "CUN",
        "CutOffTime": "60",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T07:55:00",
        "EstDepTime": "2017-11-17T07:55:00",
        "SchedArrTime": "2017-11-17T16:45:00",
        "EstArrTime": "2017-11-17T16:31:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-5",
        "DestGate": "A7",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "533",
        "FleetType": "737-800E",
        "Status": "ON TIME"
    },
    {
        "FltId": "8",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "EWR",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T08:00:00",
        "EstDepTime": "2017-11-17T08:00:00",
        "SchedArrTime": "2017-11-17T16:14:00",
        "EstArrTime": "2017-11-17T15:59:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-5",
        "DestGate": "A30",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "559",
        "FleetType": "737-800E",
        "Status": "ON TIME"
    },
    {
        "FltId": "2266",
        "Carrier": "QX",
        "Orig": "SEA",
        "Dest": "YVR",
        "CutOffTime": "60",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T08:05:00",
        "EstDepTime": "2017-11-17T08:05:00",
        "SchedArrTime": "2017-11-17T09:05:00",
        "EstArrTime": "2017-11-17T09:05:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "E96",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "7901,6157",
                "Carrier": "CX,KE"
            }
        ],
        "TailId": "426",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "648",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "TUS",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T08:05:00",
        "EstDepTime": "2017-11-17T08:05:00",
        "SchedArrTime": "2017-11-17T11:54:00",
        "EstArrTime": "2017-11-17T11:56:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-7",
        "DestGate": "B3",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "529",
        "FleetType": "737-800E",
        "Status": "ON TIME"
    },
    {
        "FltId": "754",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "RDU",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T08:10:00",
        "EstDepTime": "2017-11-17T08:10:00",
        "SchedArrTime": "2017-11-17T16:16:00",
        "EstArrTime": "2017-11-17T15:50:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-5",
        "DestGate": "D15",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "238",
        "FleetType": "737-900R",
        "Status": "ON TIME"
    },
    {
        "FltId": "314",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "SFO",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T08:10:00",
        "EstDepTime": "2017-11-17T08:10:00",
        "SchedArrTime": "2017-11-17T10:21:00",
        "EstArrTime": "2017-11-17T10:08:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "50A",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "6817,8375",
                "Carrier": "AA,AM"
            }
        ],
        "TailId": "487",
        "FleetType": "737-900E",
        "Status": "ON TIME"
    },
    {
        "FltId": "4",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "DCA",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T08:10:00",
        "EstDepTime": "2017-11-17T08:10:00",
        "SchedArrTime": "2017-11-17T16:08:00",
        "EstArrTime": "2017-11-17T15:48:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-5",
        "DestGate": "18",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "517",
        "FleetType": "737-800E",
        "Status": "ON TIME"
    },
    {
        "FltId": "2475",
        "Carrier": "QX",
        "Orig": "SEA",
        "Dest": "STS",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T08:17:00",
        "EstDepTime": "2017-11-17T08:17:00",
        "SchedArrTime": "2017-11-17T10:24:00",
        "EstArrTime": "2017-11-17T10:24:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "2",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "413",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "38",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "FLL",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T08:30:00",
        "EstDepTime": "2017-11-17T08:30:00",
        "SchedArrTime": "2017-11-17T17:19:00",
        "EstArrTime": "2017-11-17T17:19:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-5",
        "DestGate": "C6",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "407",
        "FleetType": "737-900E",
        "Status": "ON TIME"
    },
    {
        "FltId": "2465",
        "Carrier": "QX",
        "Orig": "SEA",
        "Dest": "PDX",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T08:40:00",
        "EstDepTime": "2017-11-17T08:40:00",
        "SchedArrTime": "2017-11-17T09:45:00",
        "EstArrTime": "2017-11-17T09:45:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "A6",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "440",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "2378",
        "Carrier": "QX",
        "Orig": "SEA",
        "Dest": "GEG",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T08:50:00",
        "EstDepTime": "2017-11-17T08:50:00",
        "SchedArrTime": "2017-11-17T09:59:00",
        "EstArrTime": "2017-11-17T09:59:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "C22",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "428",
        "FleetType": "DH8-400",
        "Status": "ON TIME"
    },
    {
        "FltId": "416",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "LAX",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T09:00:00",
        "EstDepTime": "2017-11-17T09:00:00",
        "SchedArrTime": "2017-11-17T11:51:00",
        "EstArrTime": "2017-11-17T11:34:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "65B",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "3013,6025",
                "Carrier": "EK,KE"
            }
        ],
        "TailId": "525",
        "FleetType": "737-800",
        "Status": "ON TIME"
    },
    {
        "FltId": "332",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "SJC",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T09:05:00",
        "EstDepTime": "2017-11-17T09:05:00",
        "SchedArrTime": "2017-11-17T11:19:00",
        "EstArrTime": "2017-11-17T11:08:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "28",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "6972",
                "Carrier": "AA"
            }
        ],
        "TailId": "528",
        "FleetType": "737-800",
        "Status": "ON TIME"
    },
    {
        "FltId": "634",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "LAS",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T09:10:00",
        "EstDepTime": "2017-11-17T09:10:00",
        "SchedArrTime": "2017-11-17T11:41:00",
        "EstArrTime": "2017-11-17T11:31:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "E15",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "8372",
                "Carrier": "AM"
            }
        ],
        "TailId": "273",
        "FleetType": "737-900R",
        "Status": "ON TIME"
    },
    {
        "FltId": "2681",
        "Carrier": "QX",
        "Orig": "SEA",
        "Dest": "PDX",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T09:15:00",
        "EstDepTime": "2017-11-17T09:15:00",
        "SchedArrTime": "2017-11-17T10:15:00",
        "EstArrTime": "2017-11-17T10:15:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "620",
        "FleetType": "E175",
        "Status": "ON TIME"
    },
    {
        "FltId": "672",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "DEN",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T09:20:00",
        "EstDepTime": "2017-11-17T09:20:00",
        "SchedArrTime": "2017-11-17T12:54:00",
        "EstArrTime": "2017-11-17T12:50:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-7",
        "DestGate": "C39",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "457",
        "FleetType": "737-900E",
        "Status": "ON TIME"
    },
    {
        "FltId": "851",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "HNL",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T09:20:00",
        "EstDepTime": "2017-11-17T09:20:00",
        "SchedArrTime": "2017-11-17T13:52:00",
        "EstArrTime": "2017-11-17T13:52:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-10",
        "DestGate": "15",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "557",
        "FleetType": "737-800E",
        "Status": "ON TIME"
    },
    {
        "FltId": "656",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "PHX",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T09:24:00",
        "EstDepTime": "2017-11-17T09:24:00",
        "SchedArrTime": "2017-11-17T13:10:00",
        "EstArrTime": "2017-11-17T13:04:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-7",
        "DestGate": "10",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "260",
        "FleetType": "737-900R",
        "Status": "ON TIME"
    },
    {
        "FltId": "370",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "OAK",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T09:25:00",
        "EstDepTime": "2017-11-17T09:25:00",
        "SchedArrTime": "2017-11-17T11:31:00",
        "EstArrTime": "2017-11-17T11:22:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-8",
        "DestGate": "14",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "6913",
                "Carrier": "AA"
            }
        ],
        "TailId": "302",
        "FleetType": "737-900",
        "Status": "ON TIME"
    },
    {
        "FltId": "7006",
        "Carrier": "AS",
        "Orig": "SEA",
        "Dest": "JNU",
        "CutOffTime": "40",
        "FltDirection": 1,
        "SchedDepTime": "2017-11-17T09:25:00",
        "EstDepTime": "2017-11-17T09:25:00",
        "SchedArrTime": "2017-11-17T10:57:00",
        "EstArrTime": "2017-11-17T10:57:00",
        "ActualTime": "",
        "OrigZuluOffset": "-8",
        "DestZuluOffset": "-9",
        "DestGate": "AF",
        "OrigGate": "",
        "CodeShares": [
            {
                "FltId": "",
                "Carrier": ""
            }
        ],
        "TailId": "627",
        "FleetType": "737-700F",
        "Status": "ON TIME"
    }
]
"""
}
