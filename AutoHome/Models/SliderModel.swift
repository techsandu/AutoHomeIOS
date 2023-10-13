//
//  SliderModel.swift
//  AutoHome
//
//  Created by Sandeep on 31/08/23.
//

import Foundation

struct SliderModel:Codable,Identifiable{
    let id:Int
    let type:String
    let image:String
let icon:String
}
struct CategoryModel:Codable,Identifiable{
    let id:Int
    let title:String
    let icon:String
}
struct ElectDataModel:Codable,Identifiable{
let id:Int
let value:Int
let date:String
}
struct CardDataModel:Codable,Identifiable,Hashable{
    var id:Int
    var cName:String
    var number:Int
    var uName:String
    var expiry:String
    var cvv:Int
}

extension Bundle{
    func decode<T:Codable>(_ file:String)-> T{
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("File is missing in \(file) path")
        }
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Data is missing")
        }
        print(T.self)
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode")
        }
        return decodedData
    }
}
