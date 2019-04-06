// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "TrisProject",
    dependencies: [
        .package(
            url: "https://github.com/tris-code/fiber.git",
            .branch("master")),
        .package(
            url: "https://github.com/tris-code/web.git",
            .branch("master")),
        .package(
            url: "https://github.com/tris-code/test.git",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "main",
            dependencies: ["Fiber", "Web", "TrisProject"]),
        .target(
            name: "TrisProject",
            dependencies: ["Web"]),
        .testTarget(
            name: "TrisProjectTests",
            dependencies: ["Test", "TrisProject"])
    ]
)
