//
//  ArrowView.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 21-01-23.
//
// al medio cruzado (un solo sentido, ambos)
// al medio largo (ambos sentidos)
// esquina con esquina (un solo sentido, ambos)

import SwiftUI

struct ArrowView: View {
    
    @State var ubication: [String] = ["0","5", "1"]
    @State var arrowImage: String = "arrow.right"
    @State var widthArrow: CGFloat = 40.0
    @State var heightArrow: CGFloat = 10.0
    @State var xPosition: CGFloat
    @State var yPosition: CGFloat
    @State var rotation: Double
    @State var bothSides: Int
    @State var larger: Int
    
    var body: some View {
        
        
        VStack {
            
            
            Image(systemName: arrowImage)
                .resizable()
                .frame(width: widthArrow, height: heightArrow)
                .position(x: xPosition, y: yPosition)
                .rotationEffect(Angle(degrees: rotation))
        }
        .onAppear {
            
            if bothSides == 1 {
                arrowImage =  "arrow.up.and.down"
                heightArrow = 40.0
                widthArrow = 10.0
            }
            
            if larger == 1 {
                if bothSides == 1 {
                    heightArrow = 60.0
                    widthArrow = 10.0
                }
                heightArrow = 10.0
                widthArrow = 60.0
            }
        }
        
        
    }
    
    

}

struct ArrowView_Previews: PreviewProvider {
    static var previews: some View {
        ArrowView(xPosition: 140.0, yPosition: 40.0, rotation: 0, bothSides: 0, larger: 1)
    }
}
