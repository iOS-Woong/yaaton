//
//  ViewModel.swift
//  yaaton01-Sooji,woong
//
//  Created by TORI on 2022/09/14.
//

import Foundation

final class ViewModel {
    
    private let service = Service()
    
    var currentData = [Entity.Data]()
    
    func reload(onComplete: @escaping (Entity) -> ()) {
        
        service.fetchNow { entity in
            self.currentData = entity.data
            onComplete(entity)
        }
    }
}
