//
//  SquareComponent.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 17-01-23.
//
// 1= rojo
// 2= azul
// 3= verde
// 4= blanco
// 5= naranjo

import SwiftUI

struct EdgeComponent: View {
    
    @State var side: Int
    @State var isYellow: Bool
    @State var upEdge: Bool
    @State var color: String = "nil"

    
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            // Up
            if side == 1 {
                SingleSquareLine(vertical: false, show: upEdge, color: colorUp(colorInt: color))
                SingleSquare(show: isYellow)
            
            // Right
            } else if side == 2 {
                HStack(spacing: 1) {
                    SingleSquare(show: isYellow)
                    SingleSquareLine(vertical: true, show: upEdge, color: colorUp(colorInt: color))
                }
                
            // Bottom
            } else if side == 3 {
                SingleSquare(show: isYellow)
                SingleSquareLine(vertical: false, show: upEdge, color: colorUp(colorInt: color))
            
            // Left
            } else if side == 4 {
                HStack(spacing: 1) {
                    SingleSquareLine(vertical: true, show: upEdge, color: colorUp(colorInt: color))
                    SingleSquare(show: isYellow)
                }
            }
            
        }
        
        
    }
    func colorUp(colorInt color: String) -> Color {
        
        if color == "1" {
            return .red
            
        } else if color == "2" {
            return .blue
            
        } else if color == "3" {
            return .green
            
        } else if color == "4" {
            return .white
            
        } else if color == "5" {
            return .orange
            
        }
        return .yellow
        
    }
}

struct CornerComponent: View {
    
    @State var side: Int
    @State var isYellow: Bool
    @State var firstCorner: Bool = true
    @State var secondCorner: Bool = true
    @State var colorOne: String = "nil"
    @State var colorTwo: String = "nil"

    
    var body: some View {
        
        VStack(spacing: 1) {
            // Arriba a la izquierda
            if side == 1 {
                SingleSquareLine(vertical: false, show: firstCorner, color: colorUp(colorInt: colorOne))
                
                HStack(spacing: 1) {
                    SingleSquareLine(vertical: true, show: secondCorner, color: colorUp(colorInt: colorTwo))
                    SingleSquare(show: isYellow)
                }
                
                //Arriba a la derecha
            } else if side == 2 {
                
                SingleSquareLine(vertical: false, show: firstCorner, color: colorUp(colorInt: colorOne))
                
                HStack(spacing: 1) {
                    SingleSquare(show: isYellow)
                    SingleSquareLine(vertical: true, show: secondCorner, color: colorUp(colorInt: colorTwo))
                }
                
                // Abajo a la izquierda
            } else if side == 3 {
                
                HStack(spacing: 1) {
                    SingleSquareLine(vertical: true, show: firstCorner, color: colorUp(colorInt: colorOne))
                    SingleSquare(show: isYellow)
                }
                SingleSquareLine(vertical: false, show: secondCorner, color: colorUp(colorInt: colorTwo))
                
                
                // Abajo a la derecha
            } else {
                HStack(spacing: 1) {
                    SingleSquare(show: isYellow)
                    SingleSquareLine(vertical: true, show: firstCorner, color: colorUp(colorInt: colorOne))
                }
                SingleSquareLine(vertical: false, show: secondCorner, color: colorUp(colorInt: colorTwo))
                
            }
            
            
            
            
        }
       
    }
    func colorUp(colorInt color: String) -> Color {
        
        if color == "1" {
            return .red
            
        } else if color == "2" {
            return .blue
            
        } else if color == "3" {
            return .green
            
        } else if color == "4" {
            return .white
            
        } else if color == "5" {
            return .orange
            
        }
        return .yellow
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
    @State var color: Color
    
    var body: some View {
        
        
        if show {
            if !vertical {
                Rectangle()
                    .frame(maxWidth: UIConstants.squareLineWidht, maxHeight: UIConstants.squareLineHeight)
                    .foregroundColor(color)
                    .border(Color.black, width: 1)
                    .cornerRadius(5)
                
            } else {
                Rectangle()
                    .frame(maxWidth: UIConstants.squareLineHeight, maxHeight: UIConstants.squareLineWidht)
                    .foregroundColor(color)
                    .border(Color.black, width: 1)
                    .cornerRadius(5)
            }
        } 
        
        
        
        
    }
}


struct SquareComponent_Previews: PreviewProvider {
    static var previews: some View {
        
        EdgeComponent(side: 1, isYellow: true, upEdge: true, color: "3")
       //CornerComponent(side: 4, isYellow: true, firstCorner: true, secondCorner: true)
        //SingleSquare(show: true)
        //SingleSquareLine(vertical: true, show: true)
        
    }
}
