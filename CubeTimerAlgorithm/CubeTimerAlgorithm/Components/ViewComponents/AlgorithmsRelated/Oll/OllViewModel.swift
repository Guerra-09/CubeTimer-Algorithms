//
//  OllViewModel.swift
//  CubeTimerAlgorithm
//
//  Created by José Guerra on 27-01-23.
//

import Foundation

class OllViewModel: ObservableObject {
    
    @Published var ollAlgorithms = [OllModel]()
    
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
        let algorithmsOll = try! JSONDecoder().decode(DataResponse.self, from: data!)
        self.ollAlgorithms = algorithmsOll.oll
        
        
        
    }
    
    
    func getSection() {
        
    }
}
