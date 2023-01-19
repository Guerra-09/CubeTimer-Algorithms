//
//  AlgorithmsView.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 15-01-23.
//

import SwiftUI

struct AlgorithmsView: View {
    var body: some View {
        
        VStack {
            
            HStack {
                NavigationLink(destination: OLLAlgorithms()) {
                    AlgorithmButton(cubeImage: "oll_presentation", square: true, title: "OLL")
                }
                
                NavigationLink(destination: Text("in progress")) {
                    AlgorithmButton(cubeImage: "pll_presentation", square: true, title: "PLL")
                }
            }
            
            NavigationLink(destination: Text("in progress")) {
                AlgorithmButton(cubeImage: "mixed_presentation", square: false, title: "Basic Cube Method")
            }


            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("backgroundColor"))
        
    }
}

struct AlgorithmsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AlgorithmsView()
        }
    }
}
