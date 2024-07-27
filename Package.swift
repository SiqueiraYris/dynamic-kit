// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DynamicKit",
    defaultLocalization: LanguageTag(stringLiteral: "pt"),
    platforms: [ .iOS(.v12) ],
    products: [
        .library(
            name: "DynamicKit",
            targets: ["DynamicKit"]),
    ],
    targets: [
        .target(
            name: "DynamicKit"),
        .testTarget(
            name: "DynamicKitTests",
            dependencies: ["DynamicKit"]),
    ]
)
