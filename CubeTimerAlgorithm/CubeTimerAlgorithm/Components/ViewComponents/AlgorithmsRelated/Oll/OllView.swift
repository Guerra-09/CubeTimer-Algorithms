//
//  OllView.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 27-01-23.
//

import SwiftUI

struct OllView: View {
    
    @ObservedObject var viewModel = OllViewModel()
    
    var body: some View {
        
        ScrollView {
        
            VStack {
                ForEach(viewModel.ollAlgorithms, id: \.self) { oll in
                
                    OllCard(url: oll.image, solution: oll.solution)
                    

                    
                }
            }
            
            
        }
        .scrollIndicators(.hidden)
        
    }
}

struct OllView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            OllView()
        }
    }
}
