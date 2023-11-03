import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: "SplashFeature",
    targets: [.unitTest, .staticFramework, .demo, .interface],
    interfaceDependencies: [
        .Features.BaseFeatureDependency
    ]
)
