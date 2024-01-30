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
}

struct TodayListView: View {
    @State var tasks = [
        ListItems(id: 1, task:"imply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an "),
        ListItems(id: 2, task:"Tarefa de hoje"),
        ListItems(id: 3, task:"'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now "),
        ListItems(id: 4, task:"tise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, comes fro")
    ]
    var body: some View {
        NavigationView {
            List(tasks) { task in
                Text(task.task)
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Hoje")
        }
        
    }
}

#Preview {
    TodayListView()
}
