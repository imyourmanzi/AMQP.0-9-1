// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AMQP.0-9-1",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AMQP.0-9-1",
            targets: ["AMQP.0-9-1"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/nicklockwood/SwiftFormat.git", from: "0.49.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AMQP.0-9-1",
            dependencies: []
        ),
        .testTarget(
            name: "AMQP.0-9-1Tests",
            dependencies: ["AMQP.0-9-1"]
        ),
    ]
)
