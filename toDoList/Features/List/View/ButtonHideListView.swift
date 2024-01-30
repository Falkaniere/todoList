//
//  ButtonHideListView.swift
//  toDoList
//
//  Created by Jonatas Falkaniere on 29/01/24.
//

import SwiftUI

struct ButtonHideListView: View {
    
    func hideList() {
        print("OK")
    }
    
    var body: some View {
        Button(action: hideList) {
            Text("Sign In")
        }
    }
}

#Preview {
    ButtonHideListView()
}
