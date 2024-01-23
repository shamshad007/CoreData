//
//  CDVehicleExtensions.swift
//  Core_Data_Demo_App
//
//  Created by Code with Shamshad on 25/01/24.
//

import Foundation

extension CDVehicle
{
    func convertToVehicle() -> Vehicle
    {
        return Vehicle(_id: self.id!, _name: self.name!, _type: self.type!)
    }
}
