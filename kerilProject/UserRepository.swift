//
//  UserRepository.swift
//  kerilProject
//
//  Created by keril on 10.08.2025.
//

class UserRepository {
    
    func getUsers() -> [User] {
        let personOne = Person(name: "Alla", surname: "Pugacheva")
        let personTwo = Person(name: "Oleg", surname: "Miami")

        let userOne = User(username: "alla", password: "123", personalData: personOne)
        let userTwo = User(username: "oleg", password: "123", personalData: personTwo)
        
        return [userOne, userTwo]
    }
}
