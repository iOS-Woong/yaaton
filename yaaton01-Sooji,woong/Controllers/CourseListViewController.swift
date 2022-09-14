//
//  ViewController.swift
//  yaaton01-Sooji,woong
//
//  Created by 서현웅 on 2022/09/14.
//

import UIKit

final class CourseListViewController: UIViewController {

    let viewModel = ViewModel()
    
    @IBOutlet weak var courseListView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCourseListViewAttributes()
    }

    // MARK: - Actions
    
    // MARK: - Attributes
    
    private func setCourseListViewAttributes() {
        courseListView.dataSource = self
        courseListView.rowHeight = 150
    }
    
    // MARK: - Constraints
}

