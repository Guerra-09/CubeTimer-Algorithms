////
////  CubeViewModel.swift
////  CubeTimerAlgorithm
////
////  Created by José Guerra on 17-01-23.
////
//// CubePatron: Este funciona igual que un codigo binario, si esque es contiene un 1, se pinta, y si es 0 se deja en blanco. Los tres primeros (1-3) son la primera row, del 4-6 son los de enmedio y los ultimos 7-9 son los de abajo. Siempre se empieza a contar de izquierda a derecha.
//// e.g
//// ["1", "0", "1", "0", "1", "1", "0", "1", "0"]
//// El resto del array es lo mismo pero con las piezas que simulan estar de lado, en este caso se empieza desde 
//
//import Foundation
//
//class CubeViewModel: ObservableObject {
//    
//    @Published var cubePatron: [Cube] = []
//    let testPatron = ["0", "1", "1", "0", "1", "1", "1", "0", "1"]
//    
//    init() {
//        initCube()
//        
//    }
//    
//    func initCube() {
//        
//        var counter = 0
//        var cubeRowOne = [String]()
//        var cubeRowTwo = [String]()
//        var cubeRowThree = [String]()
//        
//        for patron in testPatron {
//        
//            if counter <= 2 {
//                //print("primera linea \(patron)")
//                cubeRowOne.append(patron)
//                
//                
//            } else if counter >= 3 && counter <= 5 {
//                //print("segunda linea \(patron)")
//                cubeRowTwo.append(patron)
//                
//                
//            } else if (counter > 5) {
//                //print("tercera linea \(patron)")
//                cubeRowThree.append(patron)
//                
//            }
//            
//            counter += 1
//            
//            
//        }
//        
//        cubePatron = [Cube(rowOne: cubeRowOne, rowTwo: cubeRowTwo, rowThree: cubeRowThree)]
//        
//        print(cubeRowOne)
//        print(cubeRowTwo)
//        print(cubeRowThree)
//        
//    }
//    
//}
