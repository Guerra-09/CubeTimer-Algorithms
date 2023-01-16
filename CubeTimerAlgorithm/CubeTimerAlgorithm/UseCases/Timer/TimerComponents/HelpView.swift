//
//  HelpView.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 15-01-23.
//

import SwiftUI

struct HelpView: View {
    var body: some View {
        
        ZStack {
           Rectangle()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
                .foregroundColor(.black)
            Text("?")
                .foregroundColor(.white)
                .font(.title2)
                .bold()
        }
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
