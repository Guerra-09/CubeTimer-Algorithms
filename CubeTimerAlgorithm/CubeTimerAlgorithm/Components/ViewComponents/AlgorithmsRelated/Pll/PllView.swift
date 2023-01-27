//
//  PllView.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 27-01-23.
//

import SwiftUI

struct PllView: View {
    
    @ObservedObject private var viewModel = PllViewModel()
    
    var body: some View {
        ScrollView {
            
            ForEach(viewModel.pllAlgorithms, id: \.self) { pll in
                OllCard(url: pll.image, solution: pll.solution)
            }
            
        }
    }
}

struct PllView_Previews: PreviewProvider {
    static var previews: some View {
        PllView()
    }
}
