//import Foundation
//
//struct ResponseData: Decodable {
//    let oll: [CubeData]
//    
//}
//
//struct CubeData: Decodable, Hashable {
//    let render: String
//    let solution: String
//    
//    enum CodingKeys: String, CodingKey {
//        case render = "cubeRender"
//        case solution
//    }
//}
//
//
//
//
//
//
//
//func loadJson() -> [CubeData]? {
//    let fileName = "cubeAlgorithms"
//    if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
//        do {
//            let data = try Data(contentsOf: url)
//            let decoder = JSONDecoder()
//            let jsonData = try decoder.decode(ResponseData.self, from: data)
//            return jsonData.oll
//            
//        } catch {
//            print("\(error)")
//        }
//    }
//    return nil
//}
//
//
//

//func transformData(data: String) -> Void {
//
//    var array: [String] = []
//    //print(data)
//
//    for index in data {
//        //print(index)
//        array.append("\(index)")
//    }
//    
//    print(array)
//}
//
//
//transformData(data: "010111010101000000101")
