//
//  ArticleSheet.swift
//  SheetCoordinator
//
//  Created by Alex S. on 04/12/2022.
//

import SwiftUI

enum ArticleSheet: String, SheetEnum {
    case addArticle
    case editArticle
    case articleCategory
    case otherAction
    
    var id: String { rawValue }

    @ViewBuilder
    func view(coordinator: SheetCoordinator<ArticleSheet>) -> some View {
        switch self {
        case .addArticle:
            AddArticleView()
        case .editArticle:
            EditArticleView()
        case .articleCategory:
            // allow the view to control a potential next sheet to be presented
            SelectArticleCategoryView(coordinator: coordinator)
        case .otherAction:
            OtherActionView()
        }
    }
}
