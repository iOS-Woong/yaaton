//
//  Entity.swift
//  yaaton01-Sooji,woong
//
//  Created by TORI on 2022/09/14.
//

import Foundation

struct Entity: Decodable {
        
        let data: [Data]
        
        struct Data: Decodable {
            
            let courseName: String
            let startPoint: String
            let endPoint: String
            let distance: Double
        }
}
