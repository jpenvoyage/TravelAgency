//
//  TileModifier.swift
//  TravelAgency
//
//  Created by Joao Leal on 05/02/2024.
//

import SwiftUI
extension View {
    func asTile() -> some View {
        modifier(TileModifier())
    }
}
struct TileModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 10))
            .shadow(color: .init(.sRGB, white: 0.8, opacity: 1), radius: 4, y: 2)
    }
}
