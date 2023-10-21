//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Maks Winters on 18.10.2023.
//

import SwiftUI

struct DefaultView: View {
    var text: String
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(text)
        }
        .padding()
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .top, endPoint: .bottom)
                    .frame(width: .infinity, height: .infinity)
                    .ignoresSafeArea()
            }
            Text("♥️")
                .emojiBackground(number: 10)

        }
    }
}

#Preview {
    ContentView()
}
