//
//  ViewController.swift
//  kerilProject
//
//  Created by keril on 08.08.2025.
//

import UIKit

class ViewController: UIViewController {
    let helper = Helper()
    
    func showFullName(users: [User]) {
        for user in users {
            print(user.personalData.fullName)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let personOne = Person(name: "Alla", surname: "Pugacheva")
        
        let personTwo = Person(name: "Oleg", surname: "Miami")
        
        let userOne = User(username: "alla", password: "123", personalData: personOne)
        
        let userTwo = User(username: "oleg", password: "123", personalData: personTwo)
        
        helper.addPerson(person: userOne)
        helper.addPerson(person: userTwo)
        showFullName(users: helper.getPerson())
    }
}
