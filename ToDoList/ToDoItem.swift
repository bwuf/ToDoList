//
//  ToDoItem.swift
//  ToDoList
//
//  Created by scholar on 8/11/23.
//

import Foundation

class ToDoItem:Identifiable {
    var id = UUID()
    var title = ""
    var isImportant = false
    
    init(title : String, isImportant : Bool = false){
        self.title = title
        self.isImportant = isImportant
    }
}
