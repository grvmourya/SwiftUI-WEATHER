//
//  ContentView.swift
//  SwiftUI-WEATHER
//
//  Created by Gaurav Mourya on 02/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white, .gray]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
        }

    }
}

#Preview {
    ContentView()
}
