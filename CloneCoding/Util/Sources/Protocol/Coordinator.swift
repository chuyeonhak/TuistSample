//
//  Coordinator.swift
//  UtilTests
//
//  Created by chuchu on 2022/10/17.
//  Copyright © 2022 chuchu. All rights reserved.
//

import Foundation

public protocol Coordinator: AnyObject {
    var childCoordinator: [Coordinator] { get set }
    
    func start()
}
