//
//  TodayListView.swift
//  toDoList
//
//  Created by Jonatas Falkaniere on 29/01/24.
//

import SwiftUI

struct ListItems: Identifiable {
    var id: Int
    var task: String
    var isDone: Bool
}

struct TodayListView: View {
    @State var setToggle = false
    let titleList: String
    
    @State var tasks = [
        ListItems(id: 1, task:"imply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an ", isDone: false),
        ListItems(id: 2, task:"Tarefa de hoje", isDone: true),
        ListItems(id: 3, task:"'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now ", isDone: false),
        ListItems(id: 4, task:"tise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, comes fro", isDone: true)
    ]
    
    init(titleList: String) {
        self.titleList = titleList
    }
    
    var body: some View {
        NavigationView {
            if !tasks.isEmpty {
                List($tasks) { $task in
                    HStack {
                        Button {
                            task.isDone = !task.isDone
                        } label: {
                            Image(systemName: task.isDone ? "checkmark.square" : "square")
                        }
                        Text(task.task)
                    }
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
                .navigationTitle(titleList)
            }
        }
        
    }
}

#Preview {
    TodayListView(titleList: "Hoje")
//    TodayListView(titleList: "Amanha")
}
