// swift-tools-version: 6.2
// This is a Skip (https://skip.tools) package.
import PackageDescription

let package = Package(
    name: "skipapp-landmarks",
    defaultLocalization: "en",
    platforms: [.iOS(.v26), .macOS(.v26)],
    products: [
        .library(name: "Landmarks", type: .dynamic, targets: ["Landmarks"]),
    ],
    dependencies: [
        //.package(url: "https://source.skip.tools/skip.git", from: "1.6.6"),
        //.package(url: "https://source.skip.tools/skip-fuse-ui.git", from: "1.0.0")
    ],
    targets: [
        .target(name: "Landmarks", dependencies: [
            //.product(name: "SkipFuseUI", package: "skip-fuse-ui")
        ], resources: [.process("Resources")]
        //plugins: [.plugin(name: "skipstone", package: "skip")]
        )
    ]
)
