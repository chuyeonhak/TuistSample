import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "App",
    platform: .iOS,
    product: .app,
    dependencies: [
        .Projcet.Presentor,
        .Projcet.Util
    ],
    resources: ["Resources/**"],
    infoPlist: .file(path: "Support/Info.plist")
)
