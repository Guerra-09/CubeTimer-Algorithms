//
//  TimerViewModel.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 15-01-23.
//

import Foundation

class TimerViewModel: ObservableObject {
    
    @Published var time: Double = 0.0
    @Published var mode: timerMode = .stopped
    
    var lastTime: Double = 0.0
    var timer = Timer()
    
    
    func startTimer() {
        
        self.mode = .recording
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            self.time += 0.1
        }
        
    }
    
    func stopTimer() {
        timer.invalidate()
        self.mode = .stopped
        self.lastTime = self.time
        
    }
    
    
    enum timerMode {
        case recording
        case stopped
    }
    
}
