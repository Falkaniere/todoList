//
//  ViewHome.swift
//  toDoList
//
//  Created by Jonatas Falkaniere on 29/01/24.
//

import SwiftUI

struct CustomColor {
    static let primaryColor = Color("backgroundColor")
}


struct ViewHome: View {
    @State var isPresentingSheet = false
    
    var body: some View {
        NavigationView {
            VStack{
                VStack {
                    TodayListView(titleList: "Hoje")
                    Divider()
                }
                .frame(width: .infinity, height: 450)
                TodayListView(titleList: "Amanha")
            }
            .background(CustomColor.primaryColor)
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        isPresentingSheet = true
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.black)
                            .font(.system(size: 48))
                    }
                }
            }
        }
        .sheet(isPresented: $isPresentingSheet, content: {
            CreateTaskView()
        })
    }
    
}

#Preview {
    ViewHome()
}
