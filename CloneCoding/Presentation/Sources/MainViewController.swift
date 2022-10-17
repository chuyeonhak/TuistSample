//
//  MainViewController.swift
//  Feature
//
//  Created by chuchu on 2022/10/11.
//  Copyright © 2022 chuchu. All rights reserved.
//

import Foundation
import UIKit
import Then
import SnapKit

public class MainViewController: UIViewController {
    let testView = UIView().then { $0.backgroundColor = .red }
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(testView)
        
        let tabBarHeight = tabBarController?.tabBar.frame.height ?? 0
        testView.snp.makeConstraints {
            $0.bottom.equalToSuperview().inset(tabBarHeight)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(100)
        }
        
        print("mainViewController viewDidload")
        self.view.backgroundColor = .blue
    }
}
