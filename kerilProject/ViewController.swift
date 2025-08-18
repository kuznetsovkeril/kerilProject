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
    private let fullNameLabel = UILabel()
    private let someButton = UIButton()
    private let stackView = UIStackView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        
        let data = userRepository.getUsers()
        helper.addUsers(users: data)
        let users = helper.getPerson()
        
        setupLabel(users)
        setupButton()
        setupStackView()
        view.addSubview(stackView)
        setupLayout()
    }

    private func setupLabel(_ users: [User]) {
        let fullName = users.randomElement()?.personalData.fullName
        fullNameLabel.text = fullName
        fullNameLabel.font = .systemFont(ofSize: 20, weight: .bold)
        fullNameLabel.textColor = .black
        fullNameLabel.textAlignment = .center
    }
    
    private func setupButton() {
        someButton.setTitle("Randomize", for: .normal)
        someButton.backgroundColor = .black
        someButton.layer.cornerRadius = 10
    }
    
    private func setupStackView() {
        stackView.axis = .horizontal
        stackView.distribution = .fill
        stackView.alignment = .center
        stackView.spacing = 0
        
        stackView.addArrangedSubview(fullNameLabel)
        stackView.addArrangedSubview(someButton)
    }
    
    private func setupLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            stackView.heightAnchor.constraint(equalToConstant: 60),
            
            someButton.widthAnchor.constraint(equalToConstant: 130),
            someButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
