//
//  UIStackView + Extension.swift
//  Chatter
//
//  Created by Helga on 24.11.2020.
//

import UIKit

extension UIStackView{
        convenience init(arrangedSubViews : [UIView], axis : NSLayoutConstraint.Axis, spacing : CGFloat) {
            self.init(arrangedSubviews: arrangedSubViews)
            self.axis = axis
            self.spacing = spacing
            
    }
}
