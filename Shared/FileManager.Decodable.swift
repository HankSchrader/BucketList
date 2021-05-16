//
//  FileManager.Decodable.swift
//  BucketList
//
//  Created by Erik Mikac on 5/16/21.
//

import Foundation
extension FileManager {
    
    static func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        
        return paths[0]
    }
    
    static func writeToDocumentsDirectory(message: String) -> Void {
        
        let url = getDocumentsDirectory().appendingPathComponent(message)
        
        do {
            try message.write(to: url, atomically: true, encoding: .utf8)
            let input = try String(contentsOf: url)
            print(input)
        } catch {
            print(error.localizedDescription)
        }
        
    }
}
