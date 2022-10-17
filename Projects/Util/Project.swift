import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Util",
    product: .staticFramework,
    dependencies: [
        .Projcet.ThirdPartyLib
    ]
)
