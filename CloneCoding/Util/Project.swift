import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Util",
    product: .staticFramework,
    dependencies: [
        .SPM.snpaKit,
        .SPM.rxCocoa,
        .SPM.rxSwift,
        .SPM.rxRelay
    ]
)
