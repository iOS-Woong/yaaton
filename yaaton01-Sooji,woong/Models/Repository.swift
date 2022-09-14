//
//  Repository.swift
//  yaaton01-Sooji,woong
//
//  Created by TORI on 2022/09/14.
//

import Foundation

// 서버모델을 가지고 파싱할 객체
final class Repository {
    
    private let apiKey = "t_c2b23e14_49226j24_bcb36cj6e1t9"
    private let urlString = "https://open.jejudatahub.net/api/proxy/888tDaaDaat91181b7Db79811181tDaa/"
    
    func fetchData(completion: @escaping (Entity) -> ()) {
        
        guard let url = URL(string: urlString + apiKey) else { return }

        let dataTask = URLSession.shared.dataTask(with: url) { data, response, error in
            if error != nil {
                print("네트워킹 실패")
                guard let error = error else { return }
                print(error.localizedDescription)
            }
            
            guard let response = response as? HTTPURLResponse else { return }
            print(response.statusCode)
            
            guard let data = data else { return }
            
            do {
                let apiData = try JSONDecoder().decode(Entity.self, from: data)
                completion(apiData)
            } catch {
                print("디코딩 실패")
                print(error.localizedDescription)
            }
        }
        
        dataTask.resume()
    }
}
