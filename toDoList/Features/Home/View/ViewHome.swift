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
