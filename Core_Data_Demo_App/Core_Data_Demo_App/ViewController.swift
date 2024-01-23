//
//  ViewController.swift
//  Core_Data_Demo_App
//
//  Created by Code with Shamshad on 23/01/24.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    private let manager = PersonManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        debugPrint(path[0])

        createPerson()
        getSavedPerson()
    }

    func createPerson()
    {
        let vehicle = Vehicle(_id: UUID(), _name: "Pulsar 220", _type: "Bike")
        let vehicle2 = Vehicle(_id: UUID(), _name: "Audi R8", _type: "Car")
        let vehicle3 = Vehicle(_id: UUID(), _name: "Audi Q7", _type: "Car")

        let person = Person(_id: UUID(), _name: "CodeWithShamshad", _vehicle: [vehicle,vehicle2])

        let result = manager.createPerson(record: person)
        if(result == true)
        {
            debugPrint("record saved successfully")
        }
        else
        {
            debugPrint("Create failed")
        }
    }

    func getSavedPerson()
    {
        let person = manager.getAll()
        person?.forEach({ (savedPerson) in

            savedPerson.vehicles?.forEach({ (savedVehicle) in
                debugPrint("\(savedPerson.name) has \(savedVehicle.name) which is a \(savedVehicle.type)")
            })
        })
    }
}
