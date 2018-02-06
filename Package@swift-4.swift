// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "FluentProvider",
    products: [
        .library(name: "FluentProvider", targets: ["FluentProvider"]),
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/fluent.git", .upToNextMajor(from: "2.4.0")),
        .package(url: "https://github.com/leo150/vapor.git", .upToNextMajor(from: "2.4.4")),
    ],
    targets: [
        .target(name: "FluentProvider", dependencies: ["Vapor", "Fluent"]),
        .testTarget(name: "FluentProviderTests", dependencies: ["FluentProvider"])
    ]
)
