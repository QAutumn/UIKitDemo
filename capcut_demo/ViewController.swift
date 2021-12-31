//
//  ViewController.swift
//  capcut_demo
//
//  Created by 澈水 on 2021/12/18.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    var touchViews = [UITouch: TouchSpotView]() // 这是个字典!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.isMultipleTouchEnabled = true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            creatViewForTouch(touch: touch)
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let newView = viewForTouch(touch: touch)
            newView?.center = touch.location(in: view)
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            removeViewForTouch(touch: touch)
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            removeViewForTouch(touch: touch)
        }
    }
    
    func creatViewForTouch(touch: UITouch) {
        let newView = TouchSpotView()
        
        newView.bounds = CGRect(x: 0, y: 0, width: 1, height: 1)
        newView.center = touch.location(in: view)
        
        view.addSubview(newView)
        UIView.animate(withDuration: 0.2) {
            newView.bounds.size = CGSize(width: 100, height: 100)
        }
        
        touchViews[touch] = newView
    }
    
    func viewForTouch(touch: UITouch) -> TouchSpotView? {
        return touchViews[touch]
    }
    
    func removeViewForTouch(touch: UITouch) {
        if let view = touchViews[touch] {
            view.removeFromSuperview()
            touchViews.removeValue(forKey: touch)
        }
    }
}

