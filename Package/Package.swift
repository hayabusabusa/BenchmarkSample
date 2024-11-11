// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Package",
    platforms: [.iOS(.v16)],
    products: [
        .library(
            name: "Client",
            targets: ["Client"]),
        .library(
            name: "ClientLive",
            targets: ["ClientLive"]),
        .library(
            name: "Feature",
            targets: ["Feature"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/firebase/firebase-ios-sdk.git",
            from: "11.4.0"),
        .package(
            url: "https://github.com/pointfreeco/swift-composable-architecture",
            from: "1.10.3"),
        .package(
            url: "https://github.com/pointfreeco/swift-dependencies",
            from: "1.3.0"),
    ],
    targets: [
        .target(
            name: "Client",
            dependencies: [
                .product(name: "Dependencies", package: "swift-dependencies"),
            ]),
        .target(
            name: "ClientLive",
            dependencies: [
                "Client",
                .product(name: "Dependencies", package: "swift-dependencies"),
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseAuth", package: "firebase-ios-sdk"),
                .product(name: "FirebaseFirestore", package: "firebase-ios-sdk"),
            ]),
        .target(
            name: "Feature",
            dependencies: [
                "Client",
                .product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
                .product(name: "Dependencies", package: "swift-dependencies"),
            ]),
        .testTarget(
            name: "PackageTests",
            dependencies: [
                "Feature"
            ]),
    ]
)
