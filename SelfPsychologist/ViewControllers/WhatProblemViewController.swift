//
//  WhatProblemViewController.swift
//  SelfPsychologist
//
//  Created by Дмитрий Дуров on 18.10.2022.
//

import UIKit


final class WhatProblemViewController: UIViewController {
    
    // MARK: Private properties
    
    lazy private var descriptionLabel = PsyLabel()
    lazy private var startButton = PsyButton(type: .system)
    
    // MARK: Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        setDesctiptionLabel()
        setStartButton()
        title = "В чём проблема?"
    }
    
    // MARK: Private methods
    
    private func setDesctiptionLabel() {
        view.addSubview(descriptionLabel)
        descriptionLabel.text = """
        Чтобы справиться с проблемой, нужно знать в чём именно эта проблема заключается.
        После нажатия на кнопку Начать, вам предстоит ответить на несколько простых вопросов, они помогут определить в чём проблема
        """
        
        setDescriptionLabelConstraints()
    }
    
    private func setDescriptionLabelConstraints() {
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }
    private func setStartButton() {
        view?.addSubview(startButton)
        
        startButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        startButton.setTitle("Начать", for: .normal)
        setStartButtonsConstraints()
        
        startButton.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside)
    }
    
    private func setStartButtonsConstraints() {
        startButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            startButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            startButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            startButton.heightAnchor.constraint(equalToConstant: 50),
            startButton.widthAnchor.constraint(equalToConstant: 200)
            
        ])
    }
    
    @objc private func startButtonTapped() {
        
        let whatProblemQuestionVC = WhatProblemQuestionsViewController()
        let navigationController = UINavigationController(rootViewController: whatProblemQuestionVC)
        navigationController.modalPresentationStyle = .fullScreen
        self.navigationController?.present(navigationController, animated: true)

        
    }
}
