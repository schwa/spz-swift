// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "spz-swift",
    products: [
        .library(name: "spz", targets: ["spz"]),
        .library(name: "spz_cpp", targets: ["spz_cpp"]),
    ],
    targets: [
        .target(
            name: "spz",
            dependencies: ["spz_cpp"],
            swiftSettings: [
                .interoperabilityMode(.Cxx)
            ]
        ),
        .executableTarget(
            name: "spzcli",
            dependencies: ["spz_cpp"],
            swiftSettings: [
                .interoperabilityMode(.Cxx)
            ]
        ),
        .target(name: "spz_cpp",
            cxxSettings: [
                .unsafeFlags(["-std=c++20"])
            ],
            linkerSettings: [
                .linkedLibrary("z")
            ]
        ),
    ]
)
