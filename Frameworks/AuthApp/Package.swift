// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AuthApp",
    products: [
        .library(
            name: "AuthApp",
            targets: ["AuthApp"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.6.0"),
        
    ],
    targets: [
        .target(
            name: "AuthApp",
            dependencies: ["SnapKit"]),
        .testTarget(
            name: "AuthAppTests",
            dependencies: ["AuthApp"]),
    ]
)
