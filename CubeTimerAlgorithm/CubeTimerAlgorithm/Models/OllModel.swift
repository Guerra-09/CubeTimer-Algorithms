//
//  OllModel.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 26-01-23.
//

import Foundation

struct OllModel: Decodable, Hashable {
    let image: String
    let solution: String
}

struct DataResponse: Decodable {
    let oll: [OllModel]
    
    enum CodingKeys: String, CodingKey {
        case oll
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.oll = try container.decode([OllModel].self, forKey: .oll)
    }
    
}





