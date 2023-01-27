//
//  OllCard.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 27-01-23.
//

import SwiftUI

struct OllCard: View {
    
    @State var url: String
    @State var solution: String
    
    var body: some View {
       
        VStack {
            AsyncImage(url: URL(string: url)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: 130, maxHeight: 130)
                
            } placeholder: {
                ProgressView()
            }
            .padding(5)

            
            Text(solution)
                .font(.title3)
                .bold()
                .foregroundColor(.black)
        }
        .frame(width: 300, height: 200)
        .background(.black.opacity(0.1))
        .cornerRadius(15)
        .shadow(radius: 0.5)
        .padding(15)
        
        
    }
}

struct OllCard_Previews: PreviewProvider {
    static var previews: some View {
        OllCard(url: "https://www.myrubik.com/imatges/3x3x3/resolucio/cfop/OLL/complet/creu_1.png", solution: "R U2 R' U' (R U R' U') R U' R'")
    }
}
