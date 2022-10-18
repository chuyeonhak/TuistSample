//
//  AppFlowCoordinator.swift
//  App
//
//  Created by chuchu on 2022/10/17.
//  Copyright © 2022 chuchu. All rights reserved.
//

import UIKit
import Presentation
import Util

final class AppFlowCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = []
//    var tabBarController: UITabBarController
    let window: UIWindow?
    
    private let appDIContainer: AppDIContainer
    
//    init(tabBarController: UITabBarController,
//         appDIContainer: AppDIContainer) {
//        self.tabBarController = tabBarController
//        self.appDIContainer = appDIContainer
//    }
    
    init(_ window: UIWindow, appDIContainer: AppDIContainer) {
        self.window = window
        self.appDIContainer = appDIContainer
        window.makeKeyAndVisible()
    }

    func start() {
        let tabBarController = setTabBarController()
        self.window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
    
    private func setTabBarController() -> UITabBarController {
        let tabBarController = UITabBarController()
        
        let firstItem = UITabBarItem(title: "홈", image: nil, tag: 0)
        let secondItem = UITabBarItem(title: "혜택", image: nil, tag: 1)
        let thirdItem = UITabBarItem(title: "송금", image: nil, tag: 3)
        let fourtItem = UITabBarItem(title: "주식", image: nil, tag: 4)
        let fifthItem = UITabBarItem(title: "전체", image: nil, tag: 5)
        
        let vc1 = UINavigationController()
        vc1.view.backgroundColor = .white
        vc1.tabBarItem = firstItem
        vc1.navigationItem.titleView?.isHidden = false
        
        let vc2 = MainViewController()
        let testView = TestViewController()
        vc2.viewControllers = [testView]
        vc2.view.backgroundColor = .black
        vc2.tabBarItem = secondItem
        
        let vc3 = MainViewController()
        vc3.view.backgroundColor = .red
        vc3.tabBarItem = thirdItem
        
        let vc4 = MainViewController()
        vc4.view.backgroundColor = .blue
        vc4.tabBarItem = fourtItem
        
        let vc5 = MainViewController()
        vc5.view.backgroundColor = .green
        vc5.tabBarItem = fifthItem
        
        tabBarController.viewControllers = [vc1, vc2, vc3, vc4, vc5]
        
        return tabBarController
    }
    
    private func setViewController(_ viewController: UIViewController, tabItem: UITabBarItem) -> UINavigationController {
        let vc = UINavigationController()
//        let vc = viewController
        vc.tabBarItem = tabItem
        return vc
    }
}
