//
//  UIImageView + Extension.swift
//  Chatter
//
//  Created by Helga on 24.11.2020.
//

import UIKit

extension UIImageView{
    convenience init(image : UIImage?, contentMode : UIView.ContentMode) {
        self.init()
        
        self.image = image
        self.contentMode = contentMode
    }
}
