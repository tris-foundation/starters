// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "TrisProject",
    dependencies: [
        .package(
            url: "https://github.com/tris-foundation/test.git",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "TrisProject",
            dependencies: []),
        .testTarget(
            name: "TrisProjectTests",
            dependencies: ["Test", "TrisProject"])
    ]
)
