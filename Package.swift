// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AnchorKit",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "AnchorKit",
            targets: ["AnchorKit"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AnchorKit",
            dependencies: []
        ),
        .testTarget(
            name: "AnchorKitTests",
            dependencies: ["AnchorKit"]
        )
    ]
)
