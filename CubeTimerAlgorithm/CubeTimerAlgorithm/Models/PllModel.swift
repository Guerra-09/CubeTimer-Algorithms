//
//  PllModel.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 27-01-23.
//

import Foundation

struct PllModel: Decodable, Hashable {
    let image: String
    let solution: String
}

struct DataPllResponse: Decodable {
    let pll: [PllModel]
    
    enum CodingKeys: String, CodingKey {
        case pll
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.pll = try container.decode([PllModel].self, forKey: .pll)
    }
}



