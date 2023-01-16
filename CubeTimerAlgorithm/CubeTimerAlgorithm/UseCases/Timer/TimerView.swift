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
    @State var scrambleSet: String = ""
    
    // Timer variables
    @State var recording: Bool = false
    @State var tapped: Bool = false
    @State var timeColor: Color = .black
    @State var time: String = "0:00"
    
    
    
    var body: some View {
        
        // Esta parte del codigo controla los Gesture que funcionan sobre el temporizador, Si se mantiene apretado por 0.5 segundos se vuelve verde y al soltarlo pasados los 0.5, el tiempo empieza a correr
        let longPressDrag = LongPressGesture(minimumDuration: 0.5)
            .onEnded { _ in
                
                timeColor = .green
                recording = true
            }
            .sequenced(before: DragGesture(minimumDistance: 0))
            .onEnded { _ in
                
                if timeViewModel.mode == .stopped {
                    timeViewModel.startTimer()
                } else {
                    timeViewModel.stopTimer()
                }
                
                recording = false
            }
        
        
        VStack(spacing: 180) {
            
            VStack {
                // Un scramble para mixear el cubo
                Text(scrambleSet)
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                
                HStack(spacing: 25) {
                    
                    Button {
                        info.toggle()
                    } label: { HelpView() }
                    

                    Button {
                        scrambleSet = timeViewModel.getAlgorithm()
                    } label: { RefreshScramble() }
                    
                    

                }
                
            }
            .onAppear {
                scrambleSet = timeViewModel.getAlgorithm()
            }
            .sheet(isPresented: $info) {
                InfoView()
            }
            
            
            Text("\(String(format: "%.2f", timeViewModel.time))")
                // Este tapGesture permite que cambie el color del timer, si se apreta rapidamente y esta en 0.00 se pone en rojo por 1 segundo, y si el tiempo esta corriendo lo para
                .onTapGesture {
                    
                    if timeViewModel.mode == .recording {
                        timeViewModel.stopTimer()
                    }
                    
                    timeColor = .red
                    tapped = true
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        tapped = false
                        timeColor = .black
                        
                    }
                
                }
                .gesture(longPressDrag)
                .font(.system(size: 120))
                .padding(.bottom, 200)
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
