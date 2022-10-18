//
//  WhatProblemViewController.swift
//  SelfPsychologist
//
//  Created by Дмитрий Дуров on 18.10.2022.
//

import UIKit

class WhatProblemViewController: UIViewController {
    
    // MARK: Private properties
    
    private let descriptionLabel = UILabel()
    private let startButton = UIButton()
    
    // MARK: Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDesctiptionLabel()
        setStartButton()
    }
    
    // MARK: Private methods
    
    private func setDesctiptionLabel() {
        view.addSubview(descriptionLabel)
        descriptionLabel.text = "Здесь какое-то описание того, что ожидает человека после нажатия на кнопку Начать."
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textAlignment = .center
        descriptionLabel.font.withSize(30)
        setDescriptionLabelConstraints()
    }
    
    private func setDescriptionLabelConstraints() {
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 16)
        ])
    }
    private func setStartButton() {
        view?.addSubview(startButton)
        
        startButton.setTitle("Начать", for: .normal)
        startButton.titleLabel?.font.withSize(30)
        setStartButtonsConstraints()
    }
    
    private func setStartButtonsConstraints() {
        NSLayoutConstraint.activate([
            startButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 50),
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.heightAnchor.constraint(equalToConstant: 50),
            startButton.widthAnchor.constraint(equalToConstant: 200)
            
        ])
    }
}
