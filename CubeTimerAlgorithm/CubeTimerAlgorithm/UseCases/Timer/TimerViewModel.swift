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
    
    var scrambleLenght: Int = 15
    
    
    func startTimer() {
        
        time = 0.0
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
    
    func getAlgorithm() -> String {
        
        var algorithm: [String] = []
        let moves = ["L", "R", "F", "U", "B", "D"]
        var last = ""
        var posibilities: [String] = []
        var returnableScramble: String = ""
        var counter = 0

        for _ in 1...scrambleLenght {
            
            posibilities = []
            var move = moves.randomElement()!
                
            while move == last {
              move = moves.randomElement()!
            }
                
            posibilities.append(contentsOf: ["\(move)", "\(move)", "\(move)'", "2\(move)"])
            algorithm.append(posibilities.randomElement()!)
            last = move
            
        }

        
        /// Edit: Para retornar se podrian tomar el numero de caracteres totales en el [String] y de ahi poner el \n
        for i in algorithm {
            counter += 1
            
            if counter == (scrambleLenght / 2) + 3 {
                returnableScramble += ("\(i)\n ")
            } else {
                returnableScramble += ("\(i) ")
            }
            
        }
        
        return returnableScramble
      
    }

    
    
    enum timerMode {
        case recording
        case stopped
    }
    
    
    
}
