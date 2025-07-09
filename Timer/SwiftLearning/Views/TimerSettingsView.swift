//
//  TimerSettingsView.swift
//  SwiftLearning
//
//  Created by Pyotr Bodlev on 09.07.2025.
//

import SwiftUI

struct TimerSettingsView: View {
    @State private var time: Int = Int(TimerService.fullTime)
    @State private var primaryColor: Color = TimerService.primaryColor

    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    VStack {
                        HStack {
                            Text("Time in seconds")
                            Spacer()
                        }
                        TextField(
                            "Please enter time in seconds",
                            value: $time,
                            format: .number
                        ).textFieldStyle(RoundedBorderTextFieldStyle())
                    }.padding(20)
                    VStack {
                        ColorPicker(
                            "Please select primary color",
                            selection: $primaryColor
                        )
                    }.padding(20)
                }
                Spacer()
                Button("Save settings") {
                    save()
                }.buttonStyle(BorderedButtonStyle())
            }.navigationTitle("Settings")
        }
    }

    private func save() {
        UserDefaults.standard.set(time, forKey: "fullTime")
        saveColor(primaryColor)
    }
    
    private func saveColor(_ color: Color) {
        let cgColor = UIColor(color).cgColor
        
        if let components = cgColor.components {
            UserDefaults.standard.set(components, forKey: "colorComponents")
        }
    }

}

#Preview {
    TimerSettingsView()
}
