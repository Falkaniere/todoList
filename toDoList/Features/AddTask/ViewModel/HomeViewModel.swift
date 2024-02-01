//
//  HomeViewModel.swift
//  toDoList
//
//  Created by Jonatas Falkaniere on 31/01/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    var isPresentingSheet = false
    
    func manageSheet() {
        print(isPresentingSheet)
        isPresentingSheet = !isPresentingSheet
        print(isPresentingSheet)
    }
}
