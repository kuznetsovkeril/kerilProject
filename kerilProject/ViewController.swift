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
    private let fullNameLabel = UILabel()
    private let someButton: UIButton = {
        let button = UIButton()
        button.setTitle("Show FullName", for: .normal)
        button.backgroundColor = .green
        button.frame = CGRect(x: 150, y: 100, width: 150, height: 50)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        users = userRepository.getUsers()
        helper.addUsers(users: users)
        
        setupLabel()
        view.addSubview(fullNameLabel)
        view.addSubview(someButton)
    }

    private func setupLabel() {
        let fullName = users.randomElement()?.personalData.fullName
        fullNameLabel.text = fullName
        fullNameLabel.font = .systemFont(ofSize: 25, weight: .bold)
        fullNameLabel.textColor = .blue
        fullNameLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
    }
}
