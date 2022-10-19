//
//  HomeDIConntainer.swift
//  App
//
//  Created by chuchu on 2022/10/19.
//  Copyright © 2022 chuchu. All rights reserved.
//

import Foundation
import Presentation
import UIKit

final class HomeDIContainer {
    
    func makeHomeCoordinator(navigationController: UINavigationController) -> HomeCoordinator {
        return HomeCoordinator(navigationController: navigationController, dependencies: self)
    }
}

extension HomeDIContainer: HomeCoordinatorDependencies {
    func makeHomeViewController() -> HomeViewController {
        <#code#>
    }
}
