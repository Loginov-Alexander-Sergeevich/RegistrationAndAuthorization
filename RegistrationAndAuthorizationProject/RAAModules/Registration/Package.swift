// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Registration",
    products: [
        .library(
            name: "Registration",
            targets: ["Registration"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit.git", from: "5.6.0"),
    ],
    targets: [
        .target(
            name: "Registration",
            dependencies: ["SnapKit"]),
        .testTarget(
            name: "RegistrationTests",
            dependencies: ["Registration"]),
    ]
)
