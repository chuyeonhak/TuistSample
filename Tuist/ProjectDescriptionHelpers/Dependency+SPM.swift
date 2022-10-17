import ProjectDescription

public extension TargetDependency {
    enum SPM {
//        case rxSwift
//        case rxCocoa
//        case rxRelay
////        case snapKit
//
//        public var dependency: TargetDependency {
//            switch self {
//            case .rxSwift:
//                return TargetDependency.external(name: SPM.rxSwift.rawValue)
//            case .rxCocoa:
//                return TargetDependency.external(name: SPM.rxCocoa.rawValue)
//            case .rxRelay:
//                return TargetDependency.external(name: SPM.rxRelay.rawValue)
////            case .snapKit:
//
//            }
//        }
    }
}

public extension TargetDependency.SPM {
    static let rxSwift = TargetDependency.external(name: "RxSwift")
    static let rxCocoa = TargetDependency.external(name: "RxCocoa")
    static let rxRelay = TargetDependency.external(name: "RxRelay")
}
