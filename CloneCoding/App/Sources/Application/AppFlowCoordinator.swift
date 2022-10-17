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
    var navigationController: UINavigationController
    
    private let appDIContainer: AppDIContainer
    
    init(navigationCotroller: UINavigationController,
         appDIContainer: AppDIContainer) {
        self.navigationController = navigationCotroller
        self.appDIContainer = appDIContainer
    }

    func start() {
        let tabBarController = UITabBarController()
        let vc = MainViewController()
        tabBarController.viewControllers = [vc]
        tabBarController.selectedIndex = 1
        // In App Flow we can check if user needs to login, if yes we would run login flow
//        let moviesSceneDIContainer = appDIContainer.makeMoviesSceneDIContainer()
//        let flow = moviesSceneDIContainer.makeMoviesSearchFlowCoordinator(navigationController: navigationController)
//        flow.start()
    }
}
