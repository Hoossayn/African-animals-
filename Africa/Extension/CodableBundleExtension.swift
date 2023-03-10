//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by hoossayn on 25/01/2023.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // 1. locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        //2. create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("faild to load \(file) from bundle.")
        }
        
        // 3. create a decoder
        let decoder = JSONDecoder()
        
        //4. create a property for the decoded data
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        //5. return data
        return loaded
    }
}
