//
//  OLLViewModel.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 18-01-23.
//

import Foundation

class OllViewModel: ObservableObject {
    
    
    @Published var data: [CubeData] = []
    
    init() {
        data = loadJson()
    }
    
    func loadJson() -> [CubeData] {
        let fileName = "cubeAlgorithms"
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(ResponseData.self, from: data)
                return jsonData.oll
                
            } catch {
                print("\(error)")
            }
        }
    
        return [CubeData(id: 1, render: "nil", solution: "nil")]
    }
    
    
    
    func transformData(data: String) -> [String] {

        
        var array: [String] = []

        for index in data {
            array.append("\(index)")
        }
        
        
        return array
    }
    
}
