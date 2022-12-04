//
//  SelectArticleCategoryView.swift
//  SheetCoordinator
//
//  Created by Alex S. on 04/12/2022.
//

import SwiftUI

struct SelectArticleCategoryView: View {
    @ObservedObject var coordinator: SheetCoordinator<ArticleSheet>
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Select article category")
            Button("Action") {
                coordinator.presentSheet(.otherAction)
                dismiss()
            }
        }
    }
}

struct SelectArticleCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        SelectArticleCategoryView(coordinator: .init())
    }
}
