//
//  OLLAlgorithms.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 17-01-23.
//

import SwiftUI

struct OLLAlgorithms: View {
    
    @ObservedObject var viewModel = OllViewModel()
    @State var loading: Bool = true
    
    var body: some View {
        
        ScrollView {
            
            if loading {
                
                ProgressView()
                
            } else {
                
                ForEach(viewModel.data, id: \.self) { cube in
                    
                    CubeView(patron: viewModel.transformData(data: cube.render), solution: cube.solution)
                        .frame(width: 150, height: 150)
                    
                }
                
            }
  
        }
        .onAppear {
            
            
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                loading.toggle()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("backgroundColor"))
        .navigationTitle("OLL Algorithms")
        .navigationBarTitleDisplayMode(.large)
        
        
    }
    
}

struct OLLAlgorithms_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            OLLAlgorithms()
        }
    }
}
