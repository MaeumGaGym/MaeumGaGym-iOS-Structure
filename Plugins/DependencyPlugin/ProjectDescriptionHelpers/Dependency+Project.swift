import ProjectDescription

public extension Dep {
    struct Features {
        public struct Auth {}
        public struct Posture {}
        public struct Home {}
        public struct SelfCare {}
        public struct Shop {}
    }
    
    struct Modules {}
}

// MARK: - Root

public extension Dep {
    static let data = Dep.project(target: "Data", path: .data)

    static let domain = Dep.project(target: "Domain", path: .domain)
    
    static let core = Dep.project(target: "Core", path: .core)
}

// MARK: - Modules

public extension Dep.Modules {
    static let dsKit = Dep.project(target: "DSKit", path: .relativeToModules("DSKit"))
    
    static let networks = Dep.project(target: "Networks", path: .relativeToModules("Networks"))
    
    static let thirdPartyLibs = Dep.project(target: "ThirdPartyLibs", path: .relativeToModules("ThirdPartyLibs"))
    
    static let testCore = Dep.project(target: "TestCore", path: .relativeToModules("TestCore"))
}

// MARK: - Features

public extension Dep.Features {
    static func project(name: String, group: String) -> Dep { .project(target: "\(group)\(name)", path: .relativeToFeature("\(group)\(name)")) }
    
    static let BaseFeatureDependency = TargetDependency.project(target: "BaseFeatureDependency", path: .relativeToFeature("BaseFeatureDependency"))
    
    static let RootFeature = TargetDependency.project(target: "RootFeature", path: .relativeToFeature("RootFeature"))
}

public extension Dep.Features.Auth {
    static let group = "Auth"
    
    static let Feature = Dep.Features.project(name: "Feature", group: group)
    static let Interface = Dep.project(target: "\(group)FeatureInterface", path: .relativeToFeature("\(group)Feature"))
}

public extension Dep.Features.Posture {
    static let group = "Posture"
    
    static let Feature = Dep.Features.project(name: "Posture", group: group)
    static let Interface = Dep.project(target: "\(group)FeatureInterface", path: .relativeToFeature("\(group)Feature"))
}

public extension Dep.Features.Home {
    static let group = "Home"
    
    static let Feature = Dep.Features.project(name: "Home", group: group)
    static let Interface = Dep.project(target: "\(group)FeatureInterface", path: .relativeToRoot("\(group)Feature"))
}

public extension Dep.Features.SelfCare {
    static let group = "SelfCare"
    
    static let Feature = Dep.Features.project(name: "SelfCare", group: group)
    static let Interface = Dep.project(target: "\(group)FeatureInterface", path: .relativeToRoot("\(group)Feature"))
}

public extension Dep.Features.Shop {
    static let group = "Shop"
    
    static let Feature = Dep.Features.project(name: "Shop", group: group)
    static let Interface = Dep.project(target: "\(group)FeatureInterface", path: .relativeToRoot("\(group)Feature"))
}
