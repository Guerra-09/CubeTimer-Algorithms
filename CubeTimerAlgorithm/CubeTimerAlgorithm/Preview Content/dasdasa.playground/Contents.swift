import UIKit
import Foundation


let data = """

{
   "oll":[
      {
         "image":"https://www.myrubik.com/imatges/3x3x3/resolucio/cfop/OLL/complet/creu_1.png",
         "solution":"R U2 R' U' (R U R' U') R U' R'"
      },
      {
         "image":"https://www.myrubik.com/imatges/3x3x3/resolucio/cfop/OLL/complet/creu_2.png",
         "solution":"R U2 R2 U' R2 U' R2 U2 R"
      },
      {
         "image":"https://www.myrubik.com/imatges/3x3x3/resolucio/cfop/OLL/complet/creu_3.png",
         "solution":"L' U R U' L U R'"
      },
      {
         "image":"https://www.myrubik.com/imatges/3x3x3/resolucio/cfop/OLL/complet/creu_4.png",
         "solution":"R U' L' U R' U' L"
      },
      {
         "image":"https://www.myrubik.com/imatges/3x3x3/resolucio/cfop/OLL/complet/creu_5.png",
         "solution":"R2 D' R U2 R' D R U2 R"
      },
      {
         "image":"https://www.myrubik.com/imatges/3x3x3/resolucio/cfop/OLL/complet/creu_6.png",
         "solution":"r U R' U' r' F R F'"
      },
      {
         "image":"https://www.myrubik.com/imatges/3x3x3/resolucio/cfop/OLL/complet/creu_7.png",
         "solution":"R' F' L' F R F' L F"
      }
   ]
}
""".data(using: .utf8)!


//struct OllModel: Decodable {
//    let image: String
//    let solution: String
//}
//
//struct DataResponse: Decodable {
//    let oll: [OllModel]
//
//    enum CodingKeys: String, CodingKey {
//        case oll
//    }
//
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.oll = try container.decode([OllModel].self, forKey: .oll)
//    }
//
//}
//
//
//let response = try JSONDecoder().decode(DataResponse.self, from: data)
//print(response.oll)
