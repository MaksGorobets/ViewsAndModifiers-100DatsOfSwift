//
//  TitleModifierView.swift
//  ViewsAndModifiers
//
//  Created by Maks Winters on 24.10.2023.
//

import SwiftUI

struct TitleModifierView: View {
    var body: some View {
        Text("Title modifier")
            .titleText()
        Text("No title modifier")
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 50, design: .serif))
            .foregroundStyle(Color.blue)
    }
}

extension View {
    func titleText() -> some View {
        modifier(TitleModifier())
    }
}

#Preview {
    TitleModifierView()
}
