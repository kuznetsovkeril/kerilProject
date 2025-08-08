//
//  ViewController.swift
//  kerilProject
//
//  Created by keril on 08.08.2025.
//

import UIKit

class ViewController: UIViewController {
    
    var personOne = Person()
    
    var personTwo = Person()
    
    var helper = Helper()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        personOne.name = "Alla"
        personOne.surname = "Pugacheva"
        personTwo.name = "Oleg"
        personTwo.surname = "Miami"
        
        helper.addPerson(person: personOne)
        helper.addPerson(person: personTwo)
        helper.showPerson()
    }
}
