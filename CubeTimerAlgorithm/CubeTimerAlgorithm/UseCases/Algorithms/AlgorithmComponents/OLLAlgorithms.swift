//
//  OLLAlgorithms.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 17-01-23.
//

import SwiftUI

struct OLLAlgorithms: View {
    var body: some View {
        
        ScrollView {
            
            Text("Basic fridrich")
                .frame(maxWidth: .infinity)
            
            Divider()
                .frame(height: 30)
                .foregroundColor(.black)
            
            Text("Advance fridrich")
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("backgroundColor"))
        .navigationTitle("OLL Algorithms")
        
        
    }
}

struct OLLAlgorithms_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            OLLAlgorithms()
        }
    }
}
