//
//  MenuView.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 15-01-23.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        
 
        TabView {
            
            TimerView()
                .tabItem {
                    Image(systemName: "timer")
                    Text("Timer")
                        .font(.callout)
                }
                
                
            
            AlgorithmsView()
                .tabItem {
                    Image(systemName: "cube")
                    Text("Algoritmos")
                }
            
        }
        
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            MenuView()
        }
    }
}
