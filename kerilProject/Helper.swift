//
//  Helper.swift
//  kerilProject
//
//  Created by keril on 08.08.2025.
//

class Helper {
    private var persons: [User] = []
    
    func addUsers(users: [User]) {
        persons.append(contentsOf: users)
    }
    
    func getPerson() -> [User] {
        persons
    }
    
    func getRandomPerson(_ users: [User]) -> String? {
        users.randomElement()?.personalData.fullName
    }
}
