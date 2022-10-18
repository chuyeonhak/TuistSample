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
import RxSwift
import RxCocoa

public class MainViewController: UINavigationController {
    let disposeBag = DisposeBag()
    let testView = UIView().then { $0.backgroundColor = .red }
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(testView)
        
        
        let tabBarHeight = navigationController?.tabBarController?.tabBar.frame.height ?? 0
        
        testView.snp.makeConstraints {
//            $0.bottom.equalToSuperview().inset(tabBarHeight)
            $0.bottom.equalToSuperview().inset(50)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(100)
        }
        
        let tapGesture = UITapGestureRecognizer()
        testView.addGestureRecognizer(tapGesture)
        
        
        tapGesture.rx.event
            .bind { [weak self] _ in
                let vc = TestViewController()
                self?.pushViewController(vc, animated: true)
            }.disposed(by: disposeBag)
        
        print("mainViewController viewDidload")
        self.view.backgroundColor = .blue
    }
}

