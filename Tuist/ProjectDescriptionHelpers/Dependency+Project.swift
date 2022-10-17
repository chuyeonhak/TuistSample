import ProjectDescription

public extension TargetDependency {
    enum Projcet {}
}

public extension TargetDependency.Projcet {
    static let Presentor = TargetDependency.project(target: "Presentor", path: .relativeToRoot("Projects/Presentor"))
    static let Util = TargetDependency.project(target: "Util", path: .relativeToRoot("Projects/Util"))
    static let ThirdPartyLib = TargetDependency.project(target: "ThirdPartyLib", path: .relativeToRoot("Projects/ThirdPartyLib"))
}
