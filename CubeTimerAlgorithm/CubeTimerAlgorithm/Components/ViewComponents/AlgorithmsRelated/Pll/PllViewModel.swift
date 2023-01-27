//
//  PllViewModel.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 27-01-23.
//

import Foundation

class PllViewModel: ObservableObject {
    
    @Published var pllAlgorithms = [PllModel]()
    
    init() {
        loadData()
    }
    
    func loadData() {
        
        guard let url = Bundle.main.url(forResource: "cubeAlgorithms", withExtension: "json")
        else {
            print("Json not found")
            return
        }
        
        let data = try? Data(contentsOf: url)
        let algorithmsPll = try! JSONDecoder().decode(DataPllResponse.self, from: data!)
        self.pllAlgorithms = algorithmsPll.pll
        
        
        
    }
    
    
    func getSection() {
        
    }
}
