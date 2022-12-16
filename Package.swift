// swift-tools-version:5.6
import PackageDescription
let package = Package(
    name: "carton2",
    products: [
        .executable(name: "carton2", targets: ["carton2"])
    ],
    dependencies: [
        .package(url: "https://github.com/swiftwasm/JavaScriptKit", from: "0.15.0")
    ],
    targets: [
        .executableTarget(
            name: "carton2",
            dependencies: [
                .product(name: "JavaScriptKit", package: "JavaScriptKit"),
                .product(name: "JavaScriptEventLoop", package: "JavaScriptKit")
            ]),
        .testTarget(
            name: "carton2Tests",
            dependencies: ["carton2"]),
    ]
)