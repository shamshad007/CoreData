//
//  CDPersonExtensions.swift
//  Core_Data_Demo_App
//
//  Created by Code with Shamshad on 25/01/24.
//

import Foundation

extension CDPerson
{
    func convertToPerson() -> Person
    {
        return Person(_id: self.id!, _name: self.name!, _vehicle: self.convertToVechiles())
    }

    private func convertToVechiles() -> [Vehicle]?
    {
        guard self.toVehicle != nil && self.toVehicle?.count != 0 else {return nil}

        var vehicles: [Vehicle] = []

        self.toVehicle?.forEach({ (cdVehicle) in
            vehicles.append(cdVehicle.convertToVehicle())
        })

        return vehicles
    }
}
