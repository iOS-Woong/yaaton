//
//  CourseCell.swift
//  yaaton01-Sooji,woong
//
//  Created by TORI on 2022/09/14.
//

import UIKit

final class CourseCell: UITableViewCell {

    @IBOutlet weak var startPointImageView: UIImageView!
    @IBOutlet weak var endPointImageView: UIImageView!
    @IBOutlet weak var pointImageView: UIImageView!
    @IBOutlet weak var startPoint: UILabel!
    @IBOutlet weak var endPoint: UILabel!
    @IBOutlet weak var courseName: UILabel!
    @IBOutlet weak var distance: UILabel!
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setImageViewAttributes()
    }
    
    private func setImageViewAttributes() {
        [startPointImageView, endPointImageView].forEach {
            $0?.clipsToBounds = true
            $0?.layer.borderWidth = 0.4
            $0?.layer.borderColor = UIColor.darkGray.cgColor
            $0?.backgroundColor = .systemGreen
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        [startPointImageView, endPointImageView].forEach {
            $0?.layer.cornerRadius = ($0?.frame.width)! / 2
        }
    }
}
