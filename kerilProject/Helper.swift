//
//  Helper.swift
//  kerilProject
//
//  Created by keril on 08.08.2025.
//

class Helper {
    var persons: [Person] = []
    
    func addPerson(person: Person) {
        persons.append(person)
    }
    
    func showPerson() {
        for person in persons {
            print(person.fullName)
        }
    }
}
