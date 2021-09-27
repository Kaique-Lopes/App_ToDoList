//
//  TasksTableViewController.swift
//  App_ToDoList
//
//  Created by Kaique Lopes de Oliveira on 24/09/21.
//

import UIKit

let category = Category(name: "Work", color: UIColor.green)

let tasks: [Task] = [
    Task(name: "Minha primeira task", date: Date(), category: category),
    Task(name: "Minha segunda task", date: Date(), category: category)
]

class TasksTableViewController: UITableViewController {
    private dateFormatter: DateFormatter = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell", for: indexPath) as! TasksTableViewCell
        let task = tasks[indexPath.row]
        
        dateFormatter.dateFormat = "HH:mm"
        cell.hourLabel = dateFormatter.string(from: task.date)
        
    }
}
