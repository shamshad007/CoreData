//
//  CDPerson+CoreDataProperties.swift
//  Core_Data_Demo_App
//
//  Created by Code with Shamshad on 25/01/24.
//
//

import Foundation
import CoreData


extension CDPerson {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CDPerson> {
        return NSFetchRequest<CDPerson>(entityName: "CDPerson")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var name: String?
    @NSManaged public var toVehicle: Set<CDVehicle>?

}

// MARK: Generated accessors for toVehicle
extension CDPerson {

    @objc(addToVehicleObject:)
    @NSManaged public func addToToVehicle(_ value: CDVehicle)

    @objc(removeToVehicleObject:)
    @NSManaged public func removeFromToVehicle(_ value: CDVehicle)

    @objc(addToVehicle:)
    @NSManaged public func addToToVehicle(_ values: Set<CDVehicle>)

    @objc(removeToVehicle:)
    @NSManaged public func removeFromToVehicle(_ values: Set<CDVehicle>)

}

extension CDPerson : Identifiable {

}
