//
//  DataPersistanceManager.swift
//  Reservation
//
//  Created by MCS Devices on 11/8/17.
//  Copyright © 2017 MCS Devices. All rights reserved.
//

import Foundation
import CoreData
import UIKit
struct dataConstants {
    static let entity = "ReservationEntity"
    static let date = "date"
    static let partySize = "partySize"
    static let service = "service"
}
class DataPersistanceManager {
    func getContext() -> NSManagedObjectContext{
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    func getAllReservations() -> [Reservation]{
        let context = getContext()
        let fetchRequest: NSFetchRequest<ReservationEntity> = ReservationEntity.fetchRequest()
        var reservations: [Reservation] = []
        do{
            let searchResults = try context.fetch(fetchRequest)
            for reservation in searchResults as [NSManagedObject]{
                let date = reservation.value(forKey: dataConstants.date) as! Date
                let partyS = reservation.value(forKey: dataConstants.partySize) as! Int
                let service = reservation.value(forKey: dataConstants.service) as! String
                reservations.append(Reservation.init(date: date, partySize: partyS, service: service))
            }
        }catch {
            print(error.localizedDescription)
        }
        return reservations
    }
    func getReservation(reservation: Reservation) -> Reservation?{
        let context = getContext()
        let fetchRequest: NSFetchRequest<ReservationEntity> = ReservationEntity.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "\(dataConstants.date) == %@ AND \(dataConstants.service) == %@", reservation.date as CVarArg, reservation.service)
        do{
            let searchResults = try context.fetch(fetchRequest)
            for foundReservation in searchResults as [NSManagedObject]{
                let date = foundReservation.value(forKey: dataConstants.date ) as! Date
                let partyS = foundReservation.value(forKey: dataConstants.partySize) as! Int
                let service = foundReservation.value(forKey: dataConstants.service) as! String
                return Reservation(date: date, partySize: partyS, service: service)
            }
        }catch {
            print("hubo un problema")
            print(error.localizedDescription)
        }
        return nil
    }
    func insertReservations(reservation: Reservation){
       
        if getReservation(reservation: reservation) == nil {
            let context = getContext()
            guard let entity = NSEntityDescription.entity(forEntityName: dataConstants.entity, in: context) else{ return }
            let reservationToStore = NSManagedObject(entity: entity, insertInto: context)
            reservationToStore.setValue(reservation.date, forKey: dataConstants.date)
            reservationToStore.setValue(reservation.partySize, forKey: dataConstants.partySize)
            reservationToStore.setValue(reservation.service, forKey: dataConstants.service)
            do{
                try context.save()
            } catch let error as NSError{
                print("Could not save\(error):\n\(error.userInfo)")
            }
        } else{
            print("Previously saved")
        }
    }
    func deleteReservations(reservation: Reservation){
        let context = getContext()
        let fetchRequest: NSFetchRequest<ReservationEntity> = ReservationEntity.fetchRequest()
        fetchRequest.predicate = NSPredicate(format: "date == %@ AND service == %@", reservation.date as CVarArg, reservation.service)
        do{
            let searchResults = try context.fetch(fetchRequest)
            for result in searchResults as [NSManagedObject]{
                context.delete(result)
            }
        } catch{
            print(error.localizedDescription)
        }
        do{
            try context.save()
        } catch{
            print("Couldn't delete: \(error.localizedDescription)")
        }
    }
}
