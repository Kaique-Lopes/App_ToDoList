//
//  Task.swift
//  App_ToDoList
//
//  Created by Kaique Lopes de Oliveira on 26/09/21.
//

import Foundation

struct Task {
    var id = UUID()
    var name: String()
    var date: Date = Date()
    var category: Category = Category(name: "Marketing", color: UIColor.black)
}
