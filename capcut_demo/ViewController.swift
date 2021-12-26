//
//  ViewController.swift
//  capcut_demo
//
//  Created by 澈水 on 2021/12/18.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    lazy var btn = makeUIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(btn)
        btn.snp.makeConstraints { make in
            make.center.width.equalToSuperview()
            make.height.equalTo(40)
        }
    }
    func makeUIButton() -> UIButton {
        let btn = UIButton()
        btn.backgroundColor = .blue
        btn.setTitle("go", for: .normal)
        btn.addTarget(self, action: #selector(go), for: .touchUpInside)
        return btn
    }
    
    @objc func go() {
        navigationController?.pushViewController(secondVC(), animated: true)
    }
}

