//
//  MainViewController.swift
//  SelfPsychologist
//
//  Created by Дмитрий Дуров on 10.10.2022.
//

import UIKit


final class MainViewController: UIViewController {
    
    // MARK: - Private properties
    
    lazy private var stackView =  UIStackView()
    lazy private var whatProblemButton: PsyButton = {
        let whatProblemButton = PsyButton(type: .system)
        whatProblemButton.setTitle("В чём проблема?", for: .normal)
        whatProblemButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        whatProblemButton.addTarget(self,
                                    action: #selector(whatProblemButtomTapped),
                                    for: .touchUpInside)
        
        return whatProblemButton
    }()
    
    lazy private var solvingProblem: PsyButton = {
        let solvingProblem = PsyButton(type: .system)
        solvingProblem.setTitle("Решить проблему", for: .normal)
        solvingProblem.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        solvingProblem.addTarget(self,
                                 action: #selector(solvingProblemButtomTapped),
                                 for: .touchUpInside)
        
        return solvingProblem
    }()
    
    lazy private var energyButton: PsyButton = {
        let energyButton = PsyButton(type: .system)
        energyButton.setTitle("Энергия/Бодрость", for: .normal)
        energyButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return energyButton
    }()

    lazy private var meditationButton: PsyButton = {
        let meditationButton = PsyButton(type: .system)
        meditationButton.setTitle("Медитации", for: .normal)
        meditationButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return meditationButton
    }()


    lazy private var aimButton: PsyButton = {
        let aimButton = PsyButton(type: .system)
        aimButton.setTitle("Цель", for: .normal)
        aimButton.titleLabel?.font = UIFont.systemFont(ofSize: 30)
        return aimButton
    }()
    
    // MARK: - Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigationBar()
        configureStackView()
    }
    
    // MARK: - Private methods
    
    private func setupNavigationBar() {
        title = "Self-Psychologist"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundColor = .systemMint
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
        navigationController?.navigationBar.standardAppearance = navBarAppearance
    }
    
    private func configureStackView() {
        view.addSubview(stackView)
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.distribution = .fillEqually

        stackView.addArrangedSubview(whatProblemButton)
        stackView.addArrangedSubview(solvingProblem)
        stackView.addArrangedSubview(energyButton)
        stackView.addArrangedSubview(meditationButton)
        stackView.addArrangedSubview(aimButton)
        
        setStackViewConstraints()
    }
    
    
    private func setStackViewConstraints() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20 ),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
    @objc private func whatProblemButtomTapped() {
        navigationController?.pushViewController(WhatProblemViewController(), animated: true)
    }
    @objc private func solvingProblemButtomTapped() {
        navigationController?.pushViewController(WhatProblemQuestionsViewController(), animated: true)
    }
   
}


