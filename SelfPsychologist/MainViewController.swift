//
//  MainViewController.swift
//  SelfPsychologist
//
//  Created by Дмитрий Дуров on 10.10.2022.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate {
    
    var tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Psychologist"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        setTableView()
        view.addSubview(tableView)
        
    
    }
    
    func setTableView() {
        tableView = UITableView(frame: view.bounds)
        tableView.register(MainCell.self, forCellReuseIdentifier: "MainViewCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
    }
}

// MARK: - Table view data source

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MainViewCell", for: indexPath) as? MainCell else { return UITableViewCell() }
        
        var content = cell.defaultContentConfiguration()
        
        content.text = "HELLO \(indexPath)"
        
        cell.contentConfiguration = content
        
        
        
        return cell
    }
    
    
}


