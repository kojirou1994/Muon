// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "Muon",
    products: [
        .library(
            name: "Muon",
            targets: ["Muon"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Quick/Nimble", from: "7.0.1"),
        .package(url: "https://github.com/Quick/Quick", from: "1.3.2"),
        .package(url: "https://github.com/kojirou1994/Kwift", .branch("master"))
    ],
    targets: [
        .target(
            name: "Muon",
            dependencies: ["Kwift"]),
        .target(
            name: "Muon-Demo",
            dependencies: ["Muon"]),
        .testTarget(
            name: "MuonTests",
            dependencies: ["Muon", "Quick", "Nimble"]),
    ]
)
