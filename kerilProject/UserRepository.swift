//
//  UserRepository.swift
//  kerilProject
//
//  Created by keril on 10.08.2025.
//

class UserRepository {
    
    func getUsers() -> [User] {
        [userOne, userTwo]
    }
}

private let personOne = Person(name: "Alla", surname: "Pugacheva")
private let personTwo = Person(name: "Oleg", surname: "Miami")

private let userOne = User(username: "alla", password: "123", personalData: personOne)
private let userTwo = User(username: "oleg", password: "123", personalData: personTwo)
