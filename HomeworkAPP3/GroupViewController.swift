//
//  GroupViewController.swift
//  HomeworkAPP3
//
//  Created by testing on 05.07.2023.
//

import UIKit
final class GroupsViewController: UITableViewController {
    private let networkService = NetworkService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Groups"
        view.backgroundColor = .white
        tableView.backgroundColor = .white
        navigationController?.navigationBar.tintColor = .black
        navigationController?.navigationBar.barTintColor = .white
        networkService.getGroups()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        5
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt IndexPath: IndexPath) -> UITableViewCell{
        GroupCell()
    }
}
