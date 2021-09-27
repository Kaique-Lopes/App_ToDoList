//
//  CreateTasksViewController.swift
//  App_ToDoList
//
//  Created by Kaique Lopes de Oliveira on 27/09/21.
//

import UIKit

class CreateTasksViewController: UITableViewController {
    private let datePicker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        datePicker.datePickerMode = .dateAndTime
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Task Name"
        } else if section == 1 {
            return "Category"
        } else {
            return "Date and Time"
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "TaskDescriptionCell", for: indexPath) as! TaskDescriptionTableViewCell
            return cell
        }
        if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell", for: indexPath)
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "DateCell", for: indexPath) as! DateTimeTableViewCell
        return cell
    }
    @IBAction func saveButton(_ sender: Any) {
        print("Task saveButton")
    }
}
