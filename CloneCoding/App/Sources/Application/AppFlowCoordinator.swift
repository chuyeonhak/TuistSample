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

public protocol AppCoordinatorDependencies {
//    func makeHomeCoordinator(navigationController: UINavigationController)-> BookmarkCoordinator
//    func makePlaceCoordinator(navigationController: UINavigationController)-> PlaceCoordinator
//    func makeDiaryCoordinator(navigationController: UINavigationController)-> DiaryCoordinator
//    func makeVideoCoordinator(navigationController: UINavigationController)-> VideoCoordinator
}

final class AppFlowCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = []
    let window: UIWindow?
    
    private let appDIContainer: AppDIContainer
    
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
        let tabBarItems = makeTabBarItem(
            (title: "홈", image: nil, tag: 0),
            (title: "혜택", image: nil, tag: 1),
            (title: "송금", image: nil, tag: 3),
            (title: "주식", image: nil, tag: 4),
            (title: "전체", image: nil, tag: 5)
        )
        
        let viewControllers = [HomeViewController(), BenefitsViewController(), RemittanceViewController(), StockViewController(), AllViewController()]
        let navigationViewControllers = zip(viewControllers, tabBarItems).map { makeNavigationVC([$0.0], tabBarItem: $0.1) }
        
        tabBarController.viewControllers = navigationViewControllers
        
        return tabBarController
    }
    
    private func makeTabBarItem(_ component: (title: String, image: UIImage?, tag: Int)...) -> [UITabBarItem] {
        component.map { UITabBarItem(title: $0.title, image: $0.image, tag: $0.tag) }
    }
    
    private func makeNavigationVC(_ viewControllers: [UIViewController], tabBarItem: UITabBarItem) -> UINavigationController {
        let navigationView = UINavigationController()
        viewControllers.forEach { $0.view.backgroundColor = .white }
        navigationView.viewControllers = viewControllers
        navigationView.tabBarItem = tabBarItem
        
        return navigationView
    }
}
