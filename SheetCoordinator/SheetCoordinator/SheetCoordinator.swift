//
//  Sheet.swift
//  SheetCoordinator
//
//  Created by Alex S. on 04/12/2022.
//

import SwiftUI

final class SheetCoordinator<Sheet: SheetEnum>: ObservableObject {
    @Published var currentSheet: Sheet?
    private var sheetStack: [Sheet] = []
    
    @MainActor
    func presentSheet(_ sheet: Sheet) {
        sheetStack.append(sheet)
        
        if sheetStack.count == 1 {
            currentSheet = sheet
        }
    }
    
    @MainActor
    func sheetDismissed() {
        sheetStack.removeFirst()
        
        if let nextSheet = sheetStack.first {
            currentSheet = nextSheet
        }
    }
}
