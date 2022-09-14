//
//  CourceCell.swift
//  yaaton01-Sooji,woong
//
//  Created by TORI on 2022/09/14.
//

import UIKit

class CourseCell: UITableViewCell {
    
    let backgourndImage = UIImageView()
    let foregroundImage = UIImageView()
    let courseName = UILabel()
    let startPoint = UILabel()
    let endPoint = UILabel()
    let distance = UILabel()
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setAttributes()
        setLabelAttributes()
        setImageViewAttributes()
        
        setBackgroundImageConstraints()
        setForegroundImageConstraints()
        setCourseNameConstraints()
        setStartPointConstraints()
        setEndPointConstraints()
        setDistanceConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Actions
    
    // MARK: - Attributes
    
    private func setAttributes() {
        addSubview(backgourndImage)
        addSubview(foregroundImage)
        addSubview(courseName)
        addSubview(startPoint)
        addSubview(endPoint)
        addSubview(distance)
        
        backgourndImage.translatesAutoresizingMaskIntoConstraints = false
        foregroundImage.translatesAutoresizingMaskIntoConstraints = false
        courseName.translatesAutoresizingMaskIntoConstraints = false
        startPoint.translatesAutoresizingMaskIntoConstraints = false
        endPoint.translatesAutoresizingMaskIntoConstraints = false
        distance.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setLabelAttributes() {
        courseName.text = "코스명"
        startPoint.text = "시작지점"
        endPoint.text = "도착지점"
        distance.text = "거리"
    }
    
    private func setImageViewAttributes() {
        backgourndImage.backgroundColor = .systemBlue
        foregroundImage.backgroundColor = .systemRed
    }
    
    // MARK: - Constraints
    
    private func setBackgroundImageConstraints() {
        NSLayoutConstraint.activate([
            backgourndImage.topAnchor.constraint(equalTo: topAnchor),
            backgourndImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgourndImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgourndImage.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    private func setForegroundImageConstraints() {
        NSLayoutConstraint.activate([
            foregroundImage.widthAnchor.constraint(equalToConstant: frame.width / 2),
            foregroundImage.heightAnchor.constraint(equalToConstant: frame.height),
            foregroundImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            foregroundImage.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    private func setCourseNameConstraints() {
        NSLayoutConstraint.activate([
            courseName.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            courseName.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    private func setStartPointConstraints() {
        NSLayoutConstraint.activate([
            startPoint.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            startPoint.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    private func setEndPointConstraints() {
        NSLayoutConstraint.activate([
            endPoint.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            endPoint.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    private func setDistanceConstraints() {
        NSLayoutConstraint.activate([
            distance.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),
            distance.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
