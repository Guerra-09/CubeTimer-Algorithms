//
//  CubePLLView.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 21-01-23.
//
// "525233523111"

import SwiftUI

struct CubePLLView: View {
    
    @State var patron: [String] = ["5", "2", "5", "2", "3", "3", "5", "2", "3", "1", "1", "1"]
    @State var solution: String = "R U R' U R' U' R2 U' R' U R' U R"
    
    var body: some View {
        
        VStack {
            
            Grid(horizontalSpacing: 1.2, verticalSpacing: 1.2) {
                
                GridRow {
                    CornerComponent(side: 1, isYellow: true, colorOne: patron[0], colorTwo: patron[3])
                    EdgeComponent(side: 1, isYellow: true, upEdge: true, color: patron[1])
                    CornerComponent(side: 2, isYellow: true, firstCorner: true, secondCorner: true, colorOne: patron[2], colorTwo: patron[4])
    
                }
                
                
                GridRow {
                    EdgeComponent(side: 4, isYellow: true, upEdge: true, color: patron[5])
                    SingleSquare(show: true)
                    EdgeComponent(side: 2, isYellow: true, upEdge: true, color: patron[6])
                }
                
                GridRow {
                    CornerComponent(side: 3, isYellow: true, firstCorner: true, secondCorner: true, colorOne: patron[7], colorTwo: patron[9])
                    EdgeComponent(side: 3, isYellow: true, upEdge: true, color: patron[10])
                    CornerComponent(side: 4, isYellow: true, firstCorner: true, secondCorner: true, colorOne: patron[8], colorTwo: patron[11])
                }
            }
            
            Text(solution)
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
                .bold()
            
        }
        .overlay {
            
            ArrowView(xPosition: 150.0, yPosition: 50.0, rotation: -45, bothSides: 0, larger: 1)
            ArrowView(xPosition: 140.0, yPosition: 100.0, rotation: 180, bothSides: 0, larger: 0)
            ArrowView(xPosition: 125.0, yPosition: 85.0, rotation: 90, bothSides: 0, larger: 0)
            

        }
        
        // (140, 45, 0, 0, 0, 0)
        // (130, 30, 45, 1, 0, 0 )
        // (150, 30, -45, 1, 0, 0)
        // R U R' U R' U' R2 U' R' U R' U R
        
        // (140, 45, 0, 1, 0, 0)
        // (130, 30, 45, 0, 0, 0)
        // (150, 30, -45, 0, 0, 0)
        // R' U R' U' R' U' R' U R U R2
        
        // (105, 65, 120, 0, 1, 0)
        // (135, 50, -60, 0, 1, 0)
        // M2 U' M2 U' M' U2 M2 U2 M' U2
        
        // (122, 60, 90, 0, 1, 1)
        // (140, 45, 0, 0, 1, 1)
        // M2 U M2 U2 M2 U M2
        
        // (157, 35, -90, 0, 0)
        // (140, 20, 0, 0, 0)
        // (130, 70, 135, 0, 1)
        // R U R' F' r U R' U' r' F R2 U' R'
        
        // (150, 50, -45, 0, 1)
        // (140, 100, 170, 0, 0)
        // (125, 85, 90, 0, 0)
        // R U R2 F' r U R U' r' F R U' R'

    }
    
}

struct CubePLLView_Previews: PreviewProvider {
    static var previews: some View {
        CubePLLView()
    }
}
