//
//  CourseListViewController + Ext.swift
//  yaaton01-Sooji,woong
//
//  Created by TORI on 2022/09/14.
//

import UIKit

extension CourseListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "\(CourseCell.self)" , for: indexPath) as! CourseCell
        
        viewModel.reload { entity in
            let cellData = entity.data[indexPath.row]
            
            DispatchQueue.main.async {
                cell.courseName.text = cellData.courseName
                cell.startPoint.text = cellData.startPoint
                cell.endPoint.text = cellData.endPoint
                cell.distance.text = "\(cellData.distance)"
            }
        }
        
        return cell
    }
}
