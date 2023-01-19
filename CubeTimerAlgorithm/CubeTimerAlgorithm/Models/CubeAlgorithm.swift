//
//  CubeAlgorithm.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 17-01-23.
//

import Foundation

struct Cube: Identifiable {
    
    let id = UUID().uuidString
    let rowOne: [String]
    let rowTwo: [String]
    let rowThree: [String]

}

struct ResponseData: Decodable {
    let oll: [CubeData]
    
}

struct CubeData: Decodable, Hashable {
    
    let id: Int
    let render: String
    let solution: String
    
    enum CodingKeys: String, CodingKey {
        case render = "cubeRender"
        case solution
        case id
    }
}
