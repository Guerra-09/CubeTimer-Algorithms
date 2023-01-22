//
//  StarComponent.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 20-01-23.
//

import SwiftUI

struct StarComponent: View {
    
    @State var isSaved: Bool
    
    var body: some View {
        VStack {
            
            if isSaved {
                Image(systemName: "star.fill")
                    .frame(width: 250, height: 135, alignment: .topTrailing)
                    .foregroundColor(.yellow)
            } else {
                Image(systemName: "star")
                    .frame(width: 250, height: 135, alignment: .topTrailing)
                    .foregroundColor(.black)
            }
            
            
        }
        
        
    }
}

struct StarComponent_Previews: PreviewProvider {
    static var previews: some View {
        StarComponent(isSaved: true)
    }
}
