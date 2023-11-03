import ProjectDescription
import ProjectDescriptionHelpers
import DependencyPlugin

let project = Project.makeModule(
    name: "RootFeature",
    targets: [.unitTest, .staticFramework, .demo],
    internalDependencies: [
        .Features.Main.Feature,
        .Features.Spalsh.Feature,
        .Features.Auth.Feature,
        .Features.Stamp.Feature,
        .Features.Attendance.Feature,
        .Features.Notice.Feature,
        .Features.AppMyPage.Feature,
        .Features.Notification.Feature
    ]
)
