//
//  SheetEnum.swift
//  SheetCoordinator
//
//  Created by Alex S. on 04/12/2022.
//

import SwiftUI

protocol SheetEnum: Identifiable {
    associatedtype Body: View
    @ViewBuilder func view(coordinator: SheetCoordinator<Self>) -> Body
}
