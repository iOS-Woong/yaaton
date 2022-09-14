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
        let cell = tableView.dequeueReusableCell(withIdentifier: "CourseCell" , for: indexPath) as! CourseCell
        
        viewModel.reload { data in
            let cellData = data[indexPath.row]
            
            DispatchQueue.main.async {
                cell.startPointImageView.image = UIImage(named: "jeju")
                cell.endPointImageView.image = UIImage(named: "jeju")
                cell.courseName.text = cellData.courseName
                cell.startPoint.text = cellData.startPoint
                cell.endPoint.text = cellData.endPoint
                
                guard let distance = cellData.distance else { return }
                cell.distance.text = "\(distance)km"
            }
        }
        return cell
    }
}
