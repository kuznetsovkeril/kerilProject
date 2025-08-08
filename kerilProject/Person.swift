//
//  Person.swift
//  kerilProject
//
//  Created by keril on 08.08.2025.
//

struct Person {
    let name: String
    let surname: String
    var fullName: String {
        "\(name) \(surname)"
    }
}

struct User {
    let username: String
    let password: String
    let personalData: Person
}
