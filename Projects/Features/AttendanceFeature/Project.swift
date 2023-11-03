import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: "AttendanceFeature",
    targets: [.unitTest, .staticFramework, .demo, .interface],
    internalDependencies: [
        
    ],
    interfaceDependencies: [
        .Features.BaseFeatureDependency
    ]
)

