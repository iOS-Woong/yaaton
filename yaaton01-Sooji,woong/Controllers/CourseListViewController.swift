//
//  ViewController.swift
//  yaaton01-Sooji,woong
//
//  Created by 서현웅 on 2022/09/14.
//

import UIKit

final class CourseListViewController: UIViewController {

    let viewModel = ViewModel()
    
    let courseListView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAttributes()
        setCourseListViewAttributes()
        setCourseListViewConstraints()
    }

    // MARK: - Actions
    
    // MARK: - Attributes
    
    private func setAttributes() {
        view.addSubview(courseListView)
    }
    
    private func setCourseListViewAttributes() {
        courseListView.dataSource = self
        courseListView.register(CourseCell.self, forCellReuseIdentifier: "\(CourseCell.self)")
        courseListView.rowHeight = 150
        courseListView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    // MARK: - Constraints

    private func setCourseListViewConstraints() {
        NSLayoutConstraint.activate([
            courseListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            courseListView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            courseListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            courseListView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
    }
}

