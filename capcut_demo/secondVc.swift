//
//  secondVc.swift
//  capcut_demo
//
//  Created by 澈水 on 2021/12/26.
//

import Foundation
import UIKit

class secondVC: UIViewController {
    lazy var btn = makeUIButton()
    override func viewDidLoad() {
        view.backgroundColor = .red
        setupUI()
        navigationItem.hidesBackButton = false
        navigationItem.backButtonTitle = "123"
        
        let leftButton = UIBarButtonItem(
            title: "1",
            style: .plain,
            target:self ,
            action: #selector(go))
        // 加到導覽列中
        self.navigationItem.rightBarButtonItem = leftButton
        
        //改变 Item颜色
        self.navigationController?.navigationBar.tintColor = .green
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
        btn.addTarget(self, action: #selector(go), for: .allEvents)
        return btn
    }
    
    @objc func go() {
        navigationController?.popViewController(animated: true)
    }
}
