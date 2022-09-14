//
//  UILabel + Ext.swift
//  yaaton01-Sooji,woong
//
//  Created by TORI on 2022/09/14.
//

import UIKit

extension UILabel {
    
    func outlineText(text: String) {
        let strokeTextAttributes = [
            NSAttributedString.Key.strokeColor : UIColor.black,
            NSAttributedString.Key.foregroundColor : UIColor.systemGreen,
            NSAttributedString.Key.strokeWidth : -6,
            NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 20)]
        as [NSAttributedString.Key : Any]
        
        attributedText = NSMutableAttributedString(string: text, attributes: strokeTextAttributes)
    }
}
