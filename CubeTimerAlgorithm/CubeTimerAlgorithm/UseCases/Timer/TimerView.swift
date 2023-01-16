//
//  TimerView.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 15-01-23.
//

import SwiftUI

struct TimerView: View {
    
    // Protocols
    @ObservedObject var timeViewModel: TimerViewModel = TimerViewModel()

    // Visual components
    @State var info: Bool = false
    @State var scramble: String = "R' L F R U R2 R' R2 L'2F R'\n                 B R F' L"
    
    // Timer variables
    @State var recording: Bool = false
    @State var tapped: Bool = false
    @State var timeColor: Color = .black
    @State var time: String = "0:00"
    
    // Develop
    @State var log: String = "log"
    
    var body: some View {
        
        // Esta parte del codigo controla los Gesture que funcionan sobre el temporizador
        let longPressDrag = LongPressGesture(minimumDuration: 0.5)
            .onEnded { _ in
               
                timeColor = .green
                recording = true
                log = "recording"
            }
            .sequenced(before: DragGesture(minimumDistance: 0))
            .onEnded { _ in
                
                recording = false
                log = "soltado"
            }
        
        
        VStack(spacing: 180) {
            
            VStack {
                // Un scramble para mixear el cubo
                Text(scramble)
                    .font(.system(size: 30))
                
                HStack(spacing: 25) {
                    
                    Button {
                        info.toggle()
                    } label: { HelpView() }
                    

                    Button {
                        
                    } label: { RefreshScramble() }
                    
                    

                }
                Text("\(log)")
                    .foregroundColor(.red)
            }
            .sheet(isPresented: $info) {
                InfoView()
            }
            
                        
            
            Text("\(String(format: "%.2f", timeViewModel.time))")
                .onTapGesture {
                    
                    if timeViewModel.mode == .stopped {
                        timeViewModel.startTimer()
                    } else {
                        timeViewModel.stopTimer()
                    }
                    
                    
                    
                    log = "tapped"
                    timeColor = .red
                    tapped = true
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                        tapped = false
                        timeColor = .black
                    }
                
                }
                .gesture(longPressDrag)
                .font(.system(size: 100))
                .padding(.bottom, 240)
                .foregroundColor(timeColor)
                
            
            


            
            
            
           
 
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("backgroundColor"))
        
        
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
