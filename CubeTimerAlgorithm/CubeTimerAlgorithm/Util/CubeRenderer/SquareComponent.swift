//
//  SquareComponent.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 17-01-23.
//

import SwiftUI

struct EdgeComponent: View {
    
    @State var side: Int
    @State var isYellow: Bool
    @State var upEdge: Bool
    
    var body: some View {
        
        VStack {
            
            // Up
            if side == 1 {
                SingleSquareLine(vertical: false, show: upEdge)
                SingleSquare(show: isYellow)
            
            // Right
            } else if side == 2 {
                HStack {
                    SingleSquare(show: isYellow)
                    SingleSquareLine(vertical: true, show: upEdge)
                }
                
            // Bottom
            } else if side == 3 {
                SingleSquare(show: isYellow)
                SingleSquareLine(vertical: false, show: upEdge)
            
            // Left
            } else if side == 4 {
                HStack {
                    SingleSquareLine(vertical: true, show: upEdge)
                    SingleSquare(show: isYellow)
                }
            }
            
        }
        
    }
}



struct CornerComponent: View {
    
    @State var side: Int
    @State var isYellow: Bool
    @State var firstCorner: Bool
    @State var secondCorner: Bool
    
    var body: some View {
        
        VStack {
            // Arriba a la izquierda
            if side == 1 {
                SingleSquareLine(vertical: false, show: firstCorner)
                HStack {
                    SingleSquareLine(vertical: true, show: secondCorner)
                    SingleSquare(show: isYellow)
                }
                
            //Arriba a la derecha
            } else if side == 2 {
                
                SingleSquareLine(vertical: false, show: firstCorner)
                HStack {
                    SingleSquare(show: isYellow)
                    SingleSquareLine(vertical: true, show: secondCorner)
                }
            
            // Abajo a la izquierda
            } else if side == 3 {
                
                HStack {
                    SingleSquareLine(vertical: true, show: firstCorner)
                    SingleSquare(show: isYellow)
                }
                SingleSquareLine(vertical: false, show: secondCorner)
            
                // Abajo a la derecha
            } else {
                HStack {
                    SingleSquare(show: isYellow)
                    SingleSquareLine(vertical: true, show: firstCorner)
                }
                SingleSquareLine(vertical: false, show: secondCorner)
            }
            
            
            
              
        }
        
            
        
    }
}

struct SingleSquare: View {
    
    @State var show: Bool

    
    var body: some View {
        Rectangle()
            .frame(maxWidth: 70, maxHeight: 70)
            .foregroundColor(show ? .yellow : .gray)
            .border(Color.black, width: 2)
            .cornerRadius(8)
    }
}

struct SingleSquareLine: View {
    
    @State var vertical: Bool
    @State var show: Bool
    
    var body: some View {
        
        if !vertical {
            Rectangle()
                .frame(maxWidth: 70, maxHeight: 15)
                .foregroundColor(show ? .yellow : .gray)
                .border(Color.black, width: 2)
                .cornerRadius(8)
            
        } else {
            Rectangle()
                .frame(maxWidth: 15, maxHeight: 70)
                .foregroundColor(show ? .yellow : .gray)
                .border(Color.black, width: 2)
                .cornerRadius(8)
        }
        
        
    }
}


struct SquareComponent_Previews: PreviewProvider {
    static var previews: some View {
        
//        CornerComponent(side: 1, isYellow: true, firstCorner: false, secondCorner: false)
        EdgeComponent(side: 1, isYellow: true, upEdge: false)
        
    }
}
