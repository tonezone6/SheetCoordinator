//
//  View-SheetCoordinating.swift
//  SheetCoordinator
//
//  Created by Alex S. on 04/12/2022.
//

import SwiftUI

struct SheetCoordinating<Sheet: SheetEnum>: ViewModifier {
    @StateObject var coordinator: SheetCoordinator<Sheet>
    
    func body(content: Content) -> some View {
        content.sheet(
            item: $coordinator.currentSheet,
            onDismiss: { coordinator.sheetDismissed() },
            content: { sheet in
                sheet.view(coordinator: coordinator)
                    .presentationDetents([.fraction(0.2), .medium])
            }
        )
    }
}

extension View {
    func sheetCoordinating<Sheet: SheetEnum>(coordinator: SheetCoordinator<Sheet>) -> some View {
        modifier(SheetCoordinating(coordinator: coordinator))
    }
}
