//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by chuchu on 2022/10/17.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Design",
    product: .staticFramework,
    dependencies: [
        .Projcet.Util,
        .SPM.snpaKit,
        .SPM.then
    ],
    sources: "Sources/**",
    resources: ["Resources/**"]
)
