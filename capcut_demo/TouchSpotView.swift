//
//  TouchSpotView.swift
//  capcut_demo
//
//  Created by 澈水 on 2021/12/31.
//

import Foundation
import UIKit

class TouchSpotView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.lightGray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var bounds: CGRect {
        get {
            return super.bounds
        }
        set(newBounds) {
            super.bounds = newBounds
            layer.cornerRadius = newBounds.size.width / 2.0
        }
    }
}
