//
//  ViewModel.swift
//  yaaton01-Sooji,woong
//
//  Created by TORI on 2022/09/14.
//

import Foundation

final class ViewModel {
    
    private let service = Service()
    
    func reload(onComplete: @escaping ([CourseModel]) -> ()) {
        service.fetchNow { data in
            onComplete(data)
        }
    }
}
