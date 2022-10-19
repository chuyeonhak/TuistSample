//
//  HomeViewController.swift
//  Presentation
//
//  Created by chuchu on 2022/10/18.
//  Copyright © 2022 chuchu. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import RxCocoa
import RxSwift

public class HomeViewController: UIViewController {
    var coordinator: HomeCoordinator?
    let testView = UIView().then { $0.backgroundColor = .red }
    let disposeBag = DisposeBag()
    public override func viewDidLoad() {
        print("HomeViewController")
        
        [testView].forEach(view.addSubview)
        
        testView.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).inset(300)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(100)
        }
        
        let tapGesture = UITapGestureRecognizer()
        
        testView.addGestureRecognizer(tapGesture)
        
        
        
        tapGesture.rx.event
            .bind { [weak self] _ in
                let vc = TestViewController()
                self?.navigationController?.pushViewController(vc, animated: true)
            }.disposed(by: disposeBag)
    }
}
