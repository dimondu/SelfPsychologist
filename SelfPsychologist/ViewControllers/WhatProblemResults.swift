//
//  WhatProblemResults.swift
//  SelfPsychologist
//
//  Created by Дмитрий Дуров on 24.10.2022.
//

import UIKit

class WhatProblemResult: UIViewController {
    
    // MARK: - Private properties
    
    private let stackView = UIStackView()
    private let yourProblemLabel = PsyLabel()
    private let workWithItLabel = PsyLabel()
    lazy private var answerOneLabel: PsyLabel = {
        let answerOneLabel = PsyLabel()
        answerOneLabel.text = "1"
        return answerOneLabel
    }()
    lazy private var answerTwoLabel: PsyLabel = {
        let answerTwoLabel = PsyLabel()
        answerTwoLabel.text = "2"
        return answerTwoLabel
    }()
    lazy private var answerThreeLabel: PsyLabel = {
        let answerThreeLabel = PsyLabel()
        answerThreeLabel.text = "3"
        return answerThreeLabel
    }()
    lazy private var answerFourLabel: PsyLabel = {
        let answerFourLabel = PsyLabel()
        answerFourLabel.text = "4"
        return answerFourLabel
    }()
    lazy private var answerFiveLabel: PsyLabel = {
        let answerFiveLabel = PsyLabel()
        answerFiveLabel.text = "5"
        return answerFiveLabel
    }()
    lazy private var answerSixLabel: PsyLabel = {
        let answerSixLabel = PsyLabel()
        answerSixLabel.text = "6"
        return answerSixLabel
    }()
    
    lazy private var finishButton: PsyButton = {
        let finishButton = PsyButton(type: .system)
        finishButton.setTitle("Закрыть", for: .normal)
        finishButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        finishButton.addTarget(self, action: #selector(finishButtonTapped), for: .touchUpInside)
        return finishButton
    }()
    
    // MARK: - Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        navigationItem.hidesBackButton = true
        
        setYourProblemLabel()
        setWorkWithItLabel()
        setStackView()
    }
    
    // MARK: - Private methods
    
    private func setYourProblemLabel() {
        view.addSubview(yourProblemLabel)
        yourProblemLabel.text = "Ваша проблема: "
        
        setYourProblemLabelConstraints()
    }
    
    private func setYourProblemLabelConstraints() {
        yourProblemLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            yourProblemLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            yourProblemLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            yourProblemLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }
    
    private func setWorkWithItLabel() {
        view.addSubview(workWithItLabel)
        workWithItLabel.text = "Нужно работать с этим:"
        
        setWorkWithItLabelConstraints()
    }
    
    private func setWorkWithItLabelConstraints() {
        workWithItLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            workWithItLabel.topAnchor.constraint(equalTo: yourProblemLabel.bottomAnchor, constant: 20),
            workWithItLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            workWithItLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }

    private func setStackView() {
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        
        stackView.addArrangedSubview(answerOneLabel)
        stackView.addArrangedSubview(answerTwoLabel)
        stackView.addArrangedSubview(answerThreeLabel)
        stackView.addArrangedSubview(answerFourLabel)
        stackView.addArrangedSubview(answerFiveLabel)
        stackView.addArrangedSubview(answerSixLabel)
        stackView.addArrangedSubview(finishButton)
        
        setStackViewConstraints()
    }
    
    private func setStackViewConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: workWithItLabel.topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
   @objc private func finishButtonTapped() {
        dismiss(animated: true)
    }
    
    
    
}
