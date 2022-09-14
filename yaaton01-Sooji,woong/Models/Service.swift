//
//  Service.swift
//  yaaton01-Sooji,woong
//
//  Created by TORI on 2022/09/14.
//

import Foundation
import UIKit

final class Service {
    
    private let repository = Repository()
    
    var currentData = [CourseModel]()
    
    func fetchNow(onComplete: @escaping ([CourseModel]) -> ()) {
        repository.fetchData { entity in
            let data = entity.data.sorted {
                $0.distance < $1.distance
            }
            self.addToImage(data: data)
            onComplete(self.currentData)
        }
    }
    
    private func addToImage(data: [Entity.Data]) {
        data.forEach {
            var model = CourseModel(startPointImage: nil, endPointImage: nil, pointImage: nil, courseName: nil, startPoint: nil, endPoint: nil, distance: nil)
            
            model.courseName = $0.courseName
            model.startPoint = $0.startPoint
            model.endPoint = $0.endPoint
            model.distance = $0.distance
            model.startPointImage?.image = UIImage(named: "seoguipoNature.png")
            
            switch $0.courseName {
            case "산림휴양길":
                model.startPointImage?.image = UIImage(named: "seoguipoNature")
                model.endPointImage?.image = UIImage(named: "muoBeopjeongTemple.jpg")
            case "절물(조릿대)길":
                model.startPointImage?.image = UIImage(named: "seoguipoNature")
                model.endPointImage?.image = UIImage(named: "muoBeopjeongTemple")
            case "시험림길":
                model.startPointImage?.image = UIImage(named: "seoguipoNature")
                model.endPointImage?.image = UIImage(named: "muoBeopjeongTemple")
            case "돌오름길":
                model.startPointImage?.image = UIImage(named: "seoguipoNature")
                model.endPointImage?.image = UIImage(named: "muoBeopjeongTemple")
            case "천아숲길":
                model.startPointImage?.image = UIImage(named: "seoguipoNature")
                model.endPointImage?.image = UIImage(named: "muoBeopjeongTemple")
            case "동백길":
                model.startPointImage?.image = UIImage(named: "seoguipoNature")
                model.endPointImage?.image = UIImage(named: "muoBeopjeongTemple")
            case "사려니숲길":
                model.startPointImage?.image = UIImage(named: "seoguipoNature")
                model.endPointImage?.image = UIImage(named: "muoBeopjeongTemple")
            case "수악길":
                model.startPointImage?.image = UIImage(named: "seoguipoNature")
                model.endPointImage?.image = UIImage(named: "muoBeopjeongTemple")
            default:
                break
            }
            currentData.append(model)
        }
    }
}
