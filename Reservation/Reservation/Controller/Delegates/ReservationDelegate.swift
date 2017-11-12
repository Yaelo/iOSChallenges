//
//  ReservationDelegate.swift
//  Reservation
//
//  Created by MCS Devices on 11/11/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
protocol ReservationDelegate{
    func didCancelReservation(canceledReservation: Reservation);
    func didPressReschedule(actualReservation: Reservation);
}
