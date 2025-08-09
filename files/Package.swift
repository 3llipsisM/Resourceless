// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "Resourceless",
    platforms: [
        .macOS(.v13)
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        .package(url: "https://github.com/swift-virtualize/virtualize.git", from: "0.4.0")
    ],
    targets: [
        .target(
            name: "App",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "Virtualize", package: "virtualize")
            ]
        ),
        .executableTarget(name: "Run", dependencies: ["App"])
    ]
)