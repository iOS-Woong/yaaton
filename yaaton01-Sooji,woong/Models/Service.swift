//
//  Service.swift
//  yaaton01-Sooji,woong
//
//  Created by TORI on 2022/09/14.
//

import Foundation

// 로직 담당
final class Service {
    
    private let repository = Repository()
    
    func fetchNow(onComplete: @escaping (Entity) -> ()) {
       
        repository.fetchData { entity in
            onComplete(entity)
        }
    }
}
