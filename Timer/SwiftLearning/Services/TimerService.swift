//
//  TimerService.swift
//  SwiftLearning
//
//  Created by Pyotr Bodlev on 09.07.2025.
//

import Foundation
import SwiftUICore

struct TimerService {
    static var fullTime: CGFloat {
        if let defaultTime = UserDefaults.standard.value(forKey: "fullTime") {
            return CGFloat(defaultTime as! Int)
        }
        return 20
    }
    
    static var primaryColor: Color {
        guard let colorComponents = UserDefaults.standard.array(forKey: "colorComponents") as? [CGFloat] else {
            return Color.black
        }
        
        let color = Color(.sRGB, red: colorComponents[1], green: colorComponents[1], blue: colorComponents[2], opacity: colorComponents[3])
        
        return color;
    }
}
