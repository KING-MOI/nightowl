// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "Nightowl",
    platforms: [
        .macOS(.v26),
    ],
    targets: [
        .executableTarget(
            name: "Nightowl",
            path: "Sources/Nightowl",
            swiftSettings: [
                .swiftLanguageMode(.v6),
            ]
        ),
        // Test-only C target. Its constructor points NIGHTOWL_HOME at a temp
        // directory when the test bundle loads, before any test can log.
        .target(
            name: "NightowlTestHome",
            path: "Tests/NightowlTestHome"
        ),
        .testTarget(
            name: "NightowlTests",
            dependencies: ["Nightowl", "NightowlTestHome"],
            path: "Tests/NightowlTests",
            swiftSettings: [
                .swiftLanguageMode(.v6),
            ]
        ),
    ]
)
