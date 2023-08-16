//
//  NewToDoView.swift
//  ToDoList
//
//  Created by scholar on 8/11/23.
//

import SwiftUI

struct NewToDoView: View {
    
    @State var title : String
    @State var isImportant : Bool
    @Binding var toDoItems : [ToDoItem]
    @Binding var showNewTask: Bool
    
    var body: some View {
        VStack(){
            HStack{
                Text("Title:")
                    .font(.headline)
                    .padding(.leading)
                Spacer()
                
            }
            
            TextField("   Enter text here...", text: $title)
                .textFieldStyle(PlainTextFieldStyle())
                .foregroundColor(.black)
                .frame(height: 40.0)
                .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.955))
                .cornerRadius(10)
                .padding()
            
            Toggle("Is it important?", isOn: $isImportant)
                    .padding()
                    
            Button {
                self.addTask(title: self.title, isImportant: self.isImportant)
            } label: {
                Text("Add")
                    .frame(width:50, height:5)
            }
            .padding()
            .foregroundColor(.white)
            .background(Color .blue)
            .cornerRadius(20)
        
        }
    }
    
    private func addTask(title:String, isImportant:Bool = false){
        
        let task = ToDoItem(title:title,isImportant:isImportant)
        toDoItems.append(task)
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title:"", isImportant: false, toDoItems: .constant([]), showNewTask: .constant(true))
    }
}
