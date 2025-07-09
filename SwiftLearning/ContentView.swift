//
//  ContentView.swift
//  SwiftLearning
//
//  Created by Pyotr Bodlev on 09.07.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TabView {
                TimerView().tabItem({
                    Label("Timer", systemImage: "timer")
                })
                TimerSettingsView().tabItem({
                    Label("Settings", systemImage: "gear")
                })
            }
        }
    }
}

#Preview {
    ContentView()
}
