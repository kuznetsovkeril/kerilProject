//
//  ViewController.swift
//  kerilProject
//
//  Created by keril on 08.08.2025.
//

import UIKit

class ViewController: UIViewController {
    private let helper = Helper()
    private let userRepository = UserRepository()
    private var users: [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        view.alpha = 0.9
        
        users = userRepository.getUsers()
        helper.addUsers(users: users)
        showFullName(users: helper.getPerson())
    }
    
    private func showFullName(users: [User]) {
        for user in users {
            print(user.personalData.fullName)
        }
    }
}
