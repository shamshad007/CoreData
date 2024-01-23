//
//  VehicleManager.swift
//  Core_Data_Demo_App
//
//  Created by Code with Shamshad on 25/01/24.
//

import Foundation

struct VehicleManager
{
    private let _vehicleDataRepository = VehicleDataRepository()

    func createVehicle(record: Vehicle)
    {
        _vehicleDataRepository.create(record: record)
    }

    func getAll() -> [Vehicle]?
    {
        return _vehicleDataRepository.getAll()
    }
}
