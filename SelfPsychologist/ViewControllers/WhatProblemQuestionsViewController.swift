//
//  WhatProblemQuestionsViewController.swift
//  SelfPsychologist
//
//  Created by Дмитрий Дуров on 19.10.2022.
//

import UIKit


final class WhatProblemQuestionsViewController: UIViewController {
    
    // MARK: - Private properties
    
    lazy private var questionLabel = PsyLabel()
    lazy private var nextButton = PsyButton(type: .system)
    lazy private var answerTextField = UITextField()
    lazy private var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemIndigo
        title = "Вопрос №1"
        setQuestionLabel()
        setNextButton()
        setAnswerTextField()
        setNavigationBar()
    }
    
    // MARK: Private methods
    
    private func setNavigationBar() {
        navigationItem.hidesBackButton = true
        
        let barButtonExit = UIBarButtonItem(barButtonSystemItem: .close,
                                            target: self,
                                            action: #selector(closeButton))
        navigationItem.rightBarButtonItem = barButtonExit
        navigationController?.modalPresentationStyle = .fullScreen
    }
    
    private func setQuestionLabel() {
        view.addSubview(questionLabel)
        questionLabel.text = "Как звучит ваша проблема?"
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
    
    private func setNextButton() {
        view?.addSubview(nextButton)
        
        nextButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        nextButton.setTitle("Далее", for: .normal)
        setNextButtonsConstraints()
        
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
    }
    
    @objc private func nextButtonTapped() {
        if questionNumber == 0 {
            // Сохраняем то, что ввёл
            
            title = "Вопрос №2"
            
            questionLabel.text = "Что в этом неприятного?"
    
            answerTextField.text = ""
            answerTextField.placeholder = "Напишите что в вашай проблеме неприятного"
            
            questionNumber += 1
        } else if questionNumber == 1 {
            // Сохраняем то, что ввёл
            
            title = "Вопрос №3"
            
            questionLabel.text = "Что неприятного в этом неприятном?"
    
            answerTextField.text = ""
            answerTextField.placeholder = "Напишите что неприятного в предыдущем неприятном"
            
            questionNumber += 1
        } else if questionNumber == 2 {
            // Сохраняем то, что ввёл
            
            title = "Вопрос №4"
            
            questionLabel.text = "Что будет решением вашей проблемы?"
    
            answerTextField.text = ""
            answerTextField.placeholder = "Напишите что будет решением вашей проблемы"
            
            questionNumber += 1
        } else if questionNumber == 3 {
            // Сохраняем то, что ввёл
            
            title = "Вопрос №5"
            
            questionLabel.text = "Что неприятного произойдёт, если решиться эта проблема?"
    
            answerTextField.text = ""
            answerTextField.placeholder = "Напишите что неприятного произойдет, если проблема решиться"
            
            questionNumber += 1
        } else if questionNumber == 4 {
            // Сохраняем то, что ввёл
            
            show(WhatProblemResult(), sender: nextButton)
            
            questionNumber = 0
        }
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
        answerTextField.layer.cornerRadius = 10
        answerTextField.layer.masksToBounds = true
        
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
    
    @objc private func closeButton() {
        navigationController?.dismiss(animated: true)
    }

    
}
