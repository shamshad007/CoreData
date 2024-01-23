//
//  BaseRepository.swift
//  Core_Data_Demo_App
//
//  Created by Code with Shamshad on 25/01/24.
//

import Foundation

protocol BaseRepository {

    associatedtype T

    func create(record: T)
    func getAll() -> [T]?
    func get(byIdentifier id: UUID) -> T?
    func update(record: T) -> Bool
    func delete(byIdentifier id: UUID) -> Bool
}
