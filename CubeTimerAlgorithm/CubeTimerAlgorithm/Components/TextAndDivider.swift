//
//  TextAndDivider.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 18-01-23.
//

import SwiftUI

struct TextAndDivider: View {
    
    @State var title: String
    @State var divider: Bool
    
    var body: some View {
        
        VStack {
            Text(title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 25)
                .bold()
            
            if divider {
                Divider()
                    .frame(minHeight: 15)
                    .foregroundColor(.black)
            }
        }
    }
}

struct TextAndDivider_Previews: PreviewProvider {
    static var previews: some View {
        TextAndDivider(title: "square and bla bla bla", divider: true)
    }
}
