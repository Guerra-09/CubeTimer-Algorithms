//
//  CubeView.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 17-01-23.
//
// tinted: Si va pintado o no
// upPiece: Si lleva una pieza arriba
// location: Posicion de la pieza en el cubo, esto modifica la posicion de "upPice"
//location recibe: up, bottom, right, left

import SwiftUI

struct CubeView: View {
    
    //                8 new ->
    @State var patron: [String] = ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"]
    @State var solution: String
    
    var body: some View {
        
        
        VStack {
            
 
            
            Grid(horizontalSpacing: 1, verticalSpacing: 1) {
                GridRow {
                    
                    CornerComponent(side: 1, isYellow: readCorners(pieceNumber: 1), firstCorner: readUpPiece(pieceNumber: 1), secondCorner: readUpPiece(pieceNumber: 4))
                    
                    EdgeComponent(side: 1, isYellow: readEdges(pieceNumber: 1), upEdge: readUpPiece(pieceNumber: 2))
                    
                    CornerComponent(side: 2, isYellow: readCorners(pieceNumber: 2), firstCorner: readUpPiece(pieceNumber: 3), secondCorner: readUpPiece(pieceNumber: 5))
                }
                
                GridRow {
                    EdgeComponent(side: 4, isYellow: readEdges(pieceNumber: 2), upEdge: readUpPiece(pieceNumber: 6))
                    
                    SingleSquare(show: true)
                    
                    EdgeComponent(side: 2, isYellow: readEdges(pieceNumber: 3), upEdge: readUpPiece(pieceNumber: 7))
                }
                
                GridRow {
                    CornerComponent(side: 3, isYellow: readCorners(pieceNumber: 3), firstCorner: readUpPiece(pieceNumber: 8), secondCorner: readUpPiece(pieceNumber: 10))
                    
                    EdgeComponent(side: 3, isYellow: readEdges(pieceNumber: 4), upEdge: readUpPiece(pieceNumber: 11))
                    
                    CornerComponent(side: 4, isYellow: readCorners(pieceNumber: 4), firstCorner: readUpPiece(pieceNumber: 9), secondCorner: readUpPiece(pieceNumber: 12))
                }
                
                
            }
            
            Text(solution)
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
                .bold()
            
            
            .onAppear {
                renderize()
            }


        }
        
     }
    
    func renderize() -> Void {
        
    }
    
    //   9   10   11    12   13  14   15   16   17    18  19   20
    // ["1", "0", "1", "0", "1", "0", "1", "0", "1", "0", "1", "0"]
    func readUpPiece(pieceNumber number: Int) -> Bool {
        
        if number == 1 {
            if patron[9] == "0" {
                return false
            }
            
        } else if number == 2 {
            if patron[10] == "0" {
                return false
            }
            
        } else if number == 3 {
            if patron[11] == "0" {
                return false
            }
            
        } else if number == 4 {
            if patron[12] == "0" {
                return false
            }
            
        } else if number == 5 {
            if patron[13] == "0" {
                return false
            }
            
        } else if number == 6 {
            if patron[14] == "0" {
                return false
            }
            
        } else if number == 7 {
            if patron[15] == "0" {
                return false
            }
            
        } else if number == 8 {
            if patron[16] == "0" {
                return false
            }
            
        } else if number == 9 {
            if patron[17] == "0" {
                return false
            }
            
        } else if number == 10 {
            if patron[18] == "0" {
                return false
            }
            
        } else if number == 11 {
            if patron[19] == "0" {
                return false
            }
            
        } else if number == 12 {
            if patron[20] == "0" {
                return false
            }
            
        }
         
        return true
    }
    
    
    
    func readCenter() -> Bool {
        
        if patron[4] == "0" {
            return false
        }
        return true
    }
    
    func readCorners(pieceNumber number: Int) -> Bool {
        
        if number == 1 {
            if patron[0] == "0" {
                return false
            }
    
        } else if number == 2 {
            if patron[2] == "0" {
                return false
            }
    
        } else if number == 3 {
            if patron[6] == "0" {
                return false
            }
    
        } else if number == 4 {
            if patron[8] == "0" {
                return false
            }
    
        }
        
        
        return true
    }
    
    
    //        l         l         l         l
    // ["0", "1", "1", "0", "1", "1", "1", "0", "1"]
    func readEdges(pieceNumber number: Int) -> Bool {
    
        if number == 1 {
            if patron[1] == "0" {
                return false
            }
            
        } else if number == 2 {
            if patron[3] == "0" {
                return false
            }
            
        } else if number == 3 {
            if patron[5] == "0" {
                return false
            }
            
        } else if number == 4 {
            if patron[7] == "0" {
                return false
            }
        }
        
        return true
    }
}

struct CubeView_Previews: PreviewProvider {
    static var previews: some View {
        CubeView(patron: ["1"], solution: "nil")
    }
}
