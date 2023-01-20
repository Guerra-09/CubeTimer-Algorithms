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
        
        VStack(spacing: 0) {
            
            // Up
            if side == 1 {
                SingleSquareLine(vertical: false, show: upEdge)
                SingleSquare(show: isYellow)
            
            // Right
            } else if side == 2 {
                HStack(spacing: 1) {
                    SingleSquare(show: isYellow)
                    SingleSquareLine(vertical: true, show: upEdge)
                }
                
            // Bottom
            } else if side == 3 {
                SingleSquare(show: isYellow)
                SingleSquareLine(vertical: false, show: upEdge)
            
            // Left
            } else if side == 4 {
                HStack(spacing: 1) {
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
        
        VStack(spacing: 1) {
            // Arriba a la izquierda
            if side == 1 {
                SingleSquareLine(vertical: false, show: firstCorner)
        
                HStack(spacing: 1) {
                    SingleSquareLine(vertical: true, show: secondCorner)
                    SingleSquare(show: isYellow)
                }
                
            //Arriba a la derecha
            } else if side == 2 {
                
                SingleSquareLine(vertical: false, show: firstCorner)
                    
                HStack(spacing: 1) {
                    SingleSquare(show: isYellow)
                    SingleSquareLine(vertical: true, show: secondCorner)
                }
            
            // Abajo a la izquierda
            } else if side == 3 {
                
                HStack(spacing: 1) {
                    SingleSquareLine(vertical: true, show: firstCorner)
                    SingleSquare(show: isYellow)
                }
                SingleSquareLine(vertical: false, show: secondCorner)
            
            
                // Abajo a la derecha
            } else {
                HStack(spacing: 1) {
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
            .frame(maxWidth: UIConstants.widthCube, maxHeight: UIConstants.heigthCube)
            .foregroundColor(show ? .yellow : .gray)
            .border(Color.black, width: 1)
            .cornerRadius(5)
    }
}

struct SingleSquareLine: View {
    
    @State var vertical: Bool
    @State var show: Bool
    
    var body: some View {
        
        
        if show {
            if !vertical {
                Rectangle()
                    .frame(maxWidth: UIConstants.squareLineWidht, maxHeight: UIConstants.squareLineHeight)
                    .foregroundColor(show ? .yellow : .gray)
                    .border(Color.black, width: 1)
                    .cornerRadius(5)
                
            } else {
                Rectangle()
                    .frame(maxWidth: UIConstants.squareLineHeight, maxHeight: UIConstants.squareLineWidht)
                    .foregroundColor(show ? .yellow : .gray)
                    .border(Color.black, width: 1)
                    .cornerRadius(5)
            }
        } 
        
        
        
        
    }
}


struct SquareComponent_Previews: PreviewProvider {
    static var previews: some View {
        
        //EdgeComponent(side: 1, isYellow: true, upEdge: false)
       CornerComponent(side: 4, isYellow: true, firstCorner: true, secondCorner: true)
        //SingleSquare(show: true)
        //SingleSquareLine(vertical: true, show: true)
        
    }
}
