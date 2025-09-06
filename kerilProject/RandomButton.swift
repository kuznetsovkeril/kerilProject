//
//  randomButtonView.swift
//  kerilProject
//
//  Created by keril on 30.08.2025.
//
import UIKit

class RandomButton: UIButton {
    init(title: String, color: UIColor, hasShadow: Bool = false) {
        super.init(frame: .zero)
        setupView(title, color, hasShadow)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(_ title: String, _ color: UIColor, _ hasShadow: Bool) {
        setTitle(title, for: .normal)
        backgroundColor = color
        layer.cornerRadius = 10
        if hasShadow {
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOffset = CGSize(width: 15, height: 15)
            layer.shadowOpacity = 1
            layer.shadowRadius = 10
        }
    }
}
