//
//  ContentView.swift
//  SwiftUIControllers
//
//  Created by admin on 04/09/2020.
//  Copyright © 2020 Signe. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    //Hvis variablen text bliver ændret, så ved @State det og opdatere variablen text
    @State var text:String = "empty"
    
    // liste med 3 elementer
    var toDoItems = [ToDoItem(content: "ryd op"), ToDoItem(content: "køb ind"),ToDoItem(content: "lav mad")]
    
    // View er et objekt som opretter et ny scope
    var body: some View {
        NavigationView{
        //TextField er kan ikke huske noget selv
            VStack {
                TextField("start here", text: $text)
                //MyButton(message: text) er en constructor
                MyButton(message: text)
                
                List(toDoItems) {
                    item in
                    NavigationLink(destination: Text(item.content)) {
                        Text(item.content)
                    }
                    
                }
            }
        }
    }
}

struct ToDoItem:Identifiable {
    var id = UUID() // automatisk generet id
    var content: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
