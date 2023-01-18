//
//  AlgorithmButton.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 16-01-23.
//

import SwiftUI

struct AlgorithmButton: View {
    
    @State var cubeImage: String
    @State var square: Bool
    @State var title: String
    
    var body: some View {
        
        ZStack {
            
            
            if square {
                
                
                
                Rectangle()
                    .foregroundColor(Color("backgroundButton"))
                    .frame(maxWidth: 160, maxHeight: 180)
                    .cornerRadius(15)
                    .shadow(radius: 15)
                VStack {
                    Text(title)
                        .bold()
                        .font(.title3)
                        .tint(.black)
                    Image(cubeImage)
                        .resizable()
                        .frame(width: 120, height: 120)
                }
                

            } else {
                Rectangle()
                    .foregroundColor(Color("backgroundButton"))
                    .frame(maxWidth: 325, maxHeight: 200)
                    .cornerRadius(15)
                    .shadow(radius: 15)
                VStack {
                    Text(title)
                        .bold()
                        .font(.title2)
                        .tint(.black)
                    Image(cubeImage)
                        .resizable()
                        .frame(width: 120, height: 120)
                }
            }
            
            
            
        }
        
    }
}

struct AlgorithmButton_Previews: PreviewProvider {
    static var previews: some View {
        AlgorithmButton(cubeImage: "mixed_presentation", square: false, title: "OLL")
        //AlgorithmButton(cubeImage: "", square: false)
    }
}
