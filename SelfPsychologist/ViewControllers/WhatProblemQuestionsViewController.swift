//
//  WhatProblemQuestionsViewController.swift
//  SelfPsychologist
//
//  Created by Дмитрий Дуров on 19.10.2022.
//

import UIKit


class WhatProblemQuestionsViewController: UIViewController {
    
    // MARK: - Private properties
    
    private let questionLabel = UILabel()
    private let nextButton = UIButton()
    private let answerTextField = UITextField()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        title = "Вопрос №1"
        
        setQuestionLabel()
        setNextButton()
        setAnswerTextField()
    }
    
    // MARK: Private methods
    
    //TODO: УБРАТЬ ПОВТОРЯЮЩИЙСЯ КОД, СДЕЛАТЬ ОТДЕЛЬНЫЙ КЛАСС ИЛИ РАСШИРЕНИЕ
    private func setQuestionLabel() {
        view.addSubview(questionLabel)
        questionLabel.text = "Как звучит ваша проблема?"
        questionLabel.numberOfLines = 0
        questionLabel.textAlignment = .center
        setQuestionLabelConstraints()
    }
    
    private func setQuestionLabelConstraints() {
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            questionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            questionLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            questionLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16)
        ])
    }
    
    //TODO: УБРАТЬ ПОВТОРЯЮЩИЙСЯ КОД, СДЕЛАТЬ ОТДЕЛЬНЫЙ КЛАСС ИЛИ РАСШИРЕНИЕ
    private func setNextButton() {
        view?.addSubview(nextButton)
        
        nextButton.setTitle("Далее", for: .normal)
        nextButton.titleLabel?.font.withSize(30)
        nextButton.backgroundColor = .red
        nextButton.layer.cornerRadius = 10
        setNextButtonsConstraints()
        
//        nextButton.addTarget(self, action: #selector(nextButtonOnClick), for: .touchUpInside)
    }
    
    private func setNextButtonsConstraints() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            nextButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            nextButton.widthAnchor.constraint(equalToConstant: 200)
            
        ])
    }
    
    private func setAnswerTextField() {
        view.addSubview(answerTextField)
        
        answerTextField.borderStyle = .bezel
        answerTextField.placeholder = "Введите название проблемы"
        answerTextField.backgroundColor = .white
        
        setAnswerTextFieldConstraints()
        
    }
    
    private func setAnswerTextFieldConstraints() {
        answerTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
           answerTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor),
           answerTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
           answerTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        ])
    }
    
//    @objc private func nextButtonOnClick() {
//        navigationController?.pushViewController(WhatProblemQuestionsViewController(), animated: true)
//    }
    
    
    
}
