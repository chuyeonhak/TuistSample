//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by chuchu on 2022/10/17.
//

import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "App",
    platform: .iOS,
    product: .app,
    dependencies: [
        .Projcet.Design,
        .Projcet.Presentation,
        .Projcet.Repository,
        .Projcet.Util
    ],
    resources: ["Resources/**"],
    infoPlist: .file(path: "Support/Info.plist")
)
