//
//  Modifier.swift
//  ViewsAndModifiers
//
//  Created by Maks Winters on 21.10.2023.
//

import Foundation
import SwiftUI

struct FloatingView: ViewModifier {
    var number: Int
    func body(content: Content) -> some View {
        VStack{
            ForEach(0..<number, id: \.self) { item in
                HStack{
                    Spacer()
                    content
                        .font(.system(size: CGFloat(Int.random(in: 30...80))))
                }
                .rotationEffect(.degrees(Double(Int.random(in: -45...90))))
                HStack{
                    content
                        .font(.system(size: CGFloat(Int.random(in: 30...80))))
                    Spacer()
                }
                .rotationEffect(.degrees(Double(Int.random(in: -45...90))))
            }
        }
    }
}

extension View {
    func emojiBackground(number: Int) -> some View {
        modifier(FloatingView(number: number))
    }
}
