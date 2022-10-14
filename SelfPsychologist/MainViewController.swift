//
//  MainViewController.swift
//  SelfPsychologist
//
//  Created by Дмитрий Дуров on 10.10.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigationBar()
    }
    
    // MARK: - Private methods
    
    private func setupNavigationBar() {
        title = "Self-Psychologist"
        
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundColor = .systemMint
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
    }
    
   
    
}
