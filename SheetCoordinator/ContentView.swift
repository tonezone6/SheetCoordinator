//
//  ContentView.swift
//  SheetCoordinator
//
//  Created by Alex S. on 04/12/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var coordinator = SheetCoordinator<ArticleSheet>()
    
    var body: some View {
        VStack(spacing: 10) {
            Button("Add article") {
                coordinator.presentSheet(.addArticle)
            }
            Button("Edit article") {
                coordinator.presentSheet(.editArticle)
            }
            Button("Article categories") {
                coordinator.presentSheet(.articleCategory)
            }
        }
        .sheetCoordinating(coordinator: coordinator)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
