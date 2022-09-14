//
//  Entity.swift
//  yaaton01-Sooji,woong
//
//  Created by TORI on 2022/09/14.
//

import Foundation

// api 파싱할때 필요한 서버모델
struct Entity: Decodable {
        
        let data: [Data]
        
        struct Data: Decodable {
            
            let courseName: String
            let startPoint: String
            let endPoint: String
            let distance: Double
        }
}
