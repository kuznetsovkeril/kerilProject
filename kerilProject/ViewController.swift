//
//  ViewController.swift
//  kerilProject
//
//  Created by keril on 08.08.2025.
//

import UIKit

class ViewController: UIViewController {
    
    var name: String = "Keril"
    var surname: String = "Kuznetsov"
    var fullName: String { "\(name) \(surname)" }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("Меня зовут \(fullName), я создал свое первое приложениеname")
    }


}

