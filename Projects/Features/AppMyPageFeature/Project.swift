import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: "AppMyPageFeature",
    targets: [.unitTest, .staticFramework, .demo, .interface],
    internalDependencies: [

    ],
    interfaceDependencies: [
        .Features.BaseFeatureDependency
    ]
)
