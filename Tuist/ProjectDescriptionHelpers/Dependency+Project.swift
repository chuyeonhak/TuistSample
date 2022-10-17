import ProjectDescription

public extension TargetDependency {
    enum Projcet {}
}

public extension TargetDependency.Projcet {
    static let Design = TargetDependency.project(target: "Design", path: .relativeToRoot("CloneCoding/Design"))
    static let Presentation = TargetDependency.project(target: "Presentation", path: .relativeToRoot("CloneCoding/Presentation"))
    static let Repository = TargetDependency.project(target: "Repository", path: .relativeToRoot("CloneCoding/Repository"))
    static let Util = TargetDependency.project(target: "Util", path: .relativeToRoot("CloneCoding/Util"))
}
