// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GoToBible.Model",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "GoToBible.Model",
            targets: ["GoToBible.Model"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "swift-collections", url: "https://github.com/apple/swift-collections", from: "0.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "GoToBible.Model",
            dependencies: [
                .product(name: "Collections", package: "swift-collections")
            ]),
        .testTarget(
            name: "GoToBible.ModelTests",
            dependencies: ["GoToBible.Model"]
        ),
    ]
)
