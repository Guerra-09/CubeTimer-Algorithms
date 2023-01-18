//import UIKit
//
//struct Cube {
//
//    let id = UUID().uuidString
//    let rowOne: [String]
//    let rowTwo: [String]
//    let rowThree: [String]
//
//    let rowTop: [String]
//    let rowRight: [String]
//    let rowLeft: [String]
//    let rowBottom: [String]
//}
//
//class CubeViewModel {
//
//    var cubePatron: [Cube] = []
//    let testPatron = ["0", "1", "1", "0", "1", "1", "1", "0", "1"]
//
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
//        cubePatron = [Cube(rowOne: cubeRowOne, rowTwo: cubeRowTwo, rowThree: cubeRowThree, rowTop: cubeRowOne, rowRight: cubeRowTwo, rowLeft: cubeRowThree, rowBottom: cubeRowOne)]
//
//        print(cubeRowOne)
//        print(cubeRowTwo)
//        print(cubeRowThree)
//
//    }
//
//}
//
//let a = CubeViewModel()
//
