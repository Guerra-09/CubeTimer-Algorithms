//
//  BackButton.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 20-01-23.
//

import SwiftUI

struct BackButton: View {
    
    @State var previousView: String
    
    var body: some View {
        
        VStack {

            Image(systemName: "arrowshape.turn.up.backward.fill")
            Text(previousView)
                .font(.system(size: 13))
                
        }
        
    }
}

struct BackButton_Previews: PreviewProvider {
    static var previews: some View {
        BackButton(previousView: "Select a category")
    }
}
