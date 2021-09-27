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
    private let dateFormatter: DateFormatter = DateFormatter()
    
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
        cell.hourLabel.text = dateFormatter.string(from: task.date)
        
        dateFormatter.dateFormat = "dd/MM/yyyy"
        cell.hourLabel.text = dateFormatter.string(from: task.date)
        
        cell.categoryNameLabel.text = task.category.name
        cell.categoryView.backgroundColor = task.category.color
        cell.taskLabelName.text = task.name
        
        return cell
        
    }
}
