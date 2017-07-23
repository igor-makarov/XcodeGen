// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "XcodeGen",
    dependencies: [
        .package(url: "https://github.com/kylef/PathKit.git", from: "0.8.0"),
        .package(url: "https://github.com/kylef/Commander.git", from: "0.6.1"),
        .package(url: "https://github.com/jpsim/Yams.git", from: "0.3.3"),
        .package(url: "https://github.com/yonaskolb/JSONUtilities.git", from: "3.3.8"),
        .package(url: "https://github.com/kylef/Spectre.git", from: "0.7.2"),
        .package(url: "https://github.com/onevcat/Rainbow", from: "2.0.1"),
        .package(url: "https://github.com/carambalabs/xcodeproj.git", from: "0.0.6"),
    ],
    targets: [
        .target(name: "XcodeGen", dependencies: [
            "XcodeGenKit",
            "Commander",
            "Rainbow",
            ]),
        .target(name: "XcodeGenKit", dependencies: [
            "JSONUtilities",
            "xcodeproj",
            "Yams",
            "PathKit",
            ]),
        .testTarget(name: "XcodeGenKitTests"),
    ],
    swiftLanguageVersions: [3]
)
