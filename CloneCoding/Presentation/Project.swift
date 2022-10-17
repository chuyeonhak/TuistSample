import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Presentation",
    product: .staticFramework,
    dependencies: [
        .Projcet.Util,
        .SPM.snpaKit,
        .SPM.then
    ]
)
