//
//  Person.swift
//  Core_Data_Demo_App
//
//  Created by Code with Shamshad on 25/01/24.
//

import Foundation

class Person
{
    let id: UUID
    let name: String
    var vehicles: [Vehicle]?

    init(_id: UUID, _name: String, _vehicle: [Vehicle]? = nil)
    {
        self.id = _id
        self.name = _name
        self.vehicles = _vehicle
    }
}
