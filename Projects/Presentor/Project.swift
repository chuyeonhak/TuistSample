import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.makeModule(
    name: "Presentor",
    product: .staticFramework,
    dependencies: [
        .Projcet.Util,
        .SPM.snpaKit,
        .SPM.then
    ]
//    resources: ["Resources/**"]
)
