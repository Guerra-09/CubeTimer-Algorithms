//
//  RefreshScramble.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 15-01-23.
//

import SwiftUI

struct RefreshScramble: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
                .foregroundColor(.black)
            
            Image(systemName: "gobackward")
                .foregroundColor(.white)
                .bold()
                
        }
    }
}

struct RefreshScramble_Previews: PreviewProvider {
    static var previews: some View {
        RefreshScramble()
    }
}
