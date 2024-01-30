//
//  ViewHome.swift
//  toDoList
//
//  Created by Jonatas Falkaniere on 29/01/24.
//

import SwiftUI

struct Color {
//    let background = Color("backgroundColor")
}

struct ViewHome: View {
    var body: some View {
        NavigationView {
            VStack{
                TodayListView()
            }
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    Button {
                        print("OK")
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.black)
                            .font(.system(size: 48))
                    }
                }
            }
        }
    }
}

#Preview {
    ViewHome()
}
