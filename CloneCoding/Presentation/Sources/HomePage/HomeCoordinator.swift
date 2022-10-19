//
//  HomeCoordinator.swift
//  PresentationTests
//
//  Created by chuchu on 2022/10/19.
//  Copyright © 2022 chuchu. All rights reserved.
//

import Foundation
import Util
import UIKit

public protocol HomeCoordinatorDependencies {
    func makeHomeViewController() -> HomeViewController
}

public class HomeCoordinator: Coordinator {
    public var childCoordinator: [Coordinator] = []
//    public var parents: Coordinator
    public var navigationController: UINavigationController
    private let dependencies: HomeCoordinatorDependencies
    
    
    public init(navigationController: UINavigationController,
                dependencies: HomeCoordinatorDependencies) {
        self.navigationController = navigationController
        self.dependencies = dependencies
        
    }
    
    public func start() {
        let homeVC = dependencies.makeHomeViewController()
        homeVC.coordinator = self
        
        navigationController.pushViewController(homeVC, animated: true)
    }
}
