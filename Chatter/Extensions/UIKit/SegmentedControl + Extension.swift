//
//  SegmentedControl + Extension.swift
//  Chatter
//
//  Created by Helga on 01.12.2020.
//

import UIKit

extension UISegmentedControl{
    
    convenience init(first: String, second: String) {
        self.init()
        self.insertSegment(withTitle: first, at: 0, animated: true)
        self.insertSegment(withTitle: second, at: 1, animated: true)
        self.selectedSegmentIndex = 0
    }
}
