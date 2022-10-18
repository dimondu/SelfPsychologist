//
//  MainViewController.swift
//  SelfPsychologist
//
//  Created by Дмитрий Дуров on 10.10.2022.
//

import UIKit

final class MainViewController: UIViewController {
    
    // MARK: - Private properties
    
    private let tools = Tool.getTools()
    private var tableView =  UITableView()
    
    // MARK: - Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigationBar()
        configureTableView()
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
    
    private func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.register(MainCell.self, forCellReuseIdentifier: "menuCell")
        setTableViewConstraints()
    }
    
    private func setTableViewDelegates() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    private func setTableViewConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

// MARK: - Table view data source

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tools.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as? MainCell else { return UITableViewCell() }
        let tool = tools[indexPath.row]
        
        //TODO: Перенести в класс ячейки
        
        var content = cell.defaultContentConfiguration()
        content.text = tool.name
        content.textProperties.alignment = .center
        content.secondaryText = tool.description
        content.secondaryTextProperties.alignment = .center
        
        cell.contentConfiguration = content
        
        return cell
    }
    
}

// MARK: - Table view delegate

extension MainViewController:  UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
    
}
