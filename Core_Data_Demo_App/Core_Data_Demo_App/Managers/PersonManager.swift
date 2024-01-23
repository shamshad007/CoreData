//
//  PersonManager.swift
//  Core_Data_Demo_App
//
//  Created by Code with Shamshad on 25/01/24.
//

import Foundation

struct PersonManager
{
    private let _personDataRepository = PersonDataRepository()

    func createPerson(record: Person) -> Bool
    {
        guard record.vehicles != nil else {return false}
        _personDataRepository.create(record: record)

        return true
    }

    func getAll() -> [Person]?
    {
        return _personDataRepository.getAll()
    }
}
