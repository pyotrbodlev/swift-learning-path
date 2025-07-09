//
//  TimerView.swift
//  SwiftLearning
//
//  Created by Pyotr Bodlev on 09.07.2025.
//

import Combine
import SwiftUI

struct TimerView: View {
    @State private var time: CGFloat = 0
    @State private var primaryColor: Color = TimerService.primaryColor
    @State private var timerWorking: Bool = false
    private let lineWidth: CGFloat = 20
    @State private var fullTime: CGFloat = TimerService.fullTime
    private let timerInstance = Timer.publish(every: 1, on: .main, in: .common)
        .autoconnect()

    private func loadInitialValues() {
        fullTime = TimerService.fullTime
        primaryColor = TimerService.primaryColor
        if (!timerWorking) {
            time = fullTime
        }
    }
    
    var body: some View {
        
        ZStack {
            Circle().stroke(
                Color.gray.opacity(0.5),
                style: StrokeStyle(lineWidth: lineWidth)
            )
            Circle().trim(from: 0, to: CGFloat((time / fullTime))).rotation(
                Angle(degrees: -90)
            )
            .stroke(
                primaryColor,
                style: StrokeStyle(lineWidth: lineWidth, lineCap: .round)
            ).animation(.easeIn, value: CGFloat((time / fullTime)))

            HStack(spacing: 20) {
                Image(
                    systemName: timerWorking
                        ? "pause.rectangle.fill" : "play.rectangle.fill"
                ).foregroundStyle(primaryColor).onTapGesture(perform: {
                    timerWorking.toggle()
                })
                Text("\(time.formatted())").foregroundStyle(primaryColor)
                Image(systemName: "arrow.trianglehead.counterclockwise")
                    .foregroundStyle(primaryColor)
                    .onTapGesture {
                        timerWorking = false
                        time = fullTime
                    }
            }.scaleEffect(1.5)
        }.padding(30).onAppear(perform: {
            loadInitialValues()
        }).onReceive(
            timerInstance,
            perform: { _ in
                guard time > 0 else { return }
                if timerWorking {
                    time -= 1
                }
                if time == 0 {
                    time = fullTime
                    timerWorking = false
                }
            }
        )
    }
}

#Preview {
    TimerView()
}
