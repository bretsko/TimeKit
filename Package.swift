// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "TimeKit",
    platforms: [
        .macOS(.v10_15), .iOS(.v13)//, .tvOS(.v10), .watchOS(.v4)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "TimeKit",
            targets: ["TimeKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/bretsko/DateKit", from: "1.0.0"),
        .package(url: "https://github.com/bretsko/MinimalBase", from: "1.0.0"),
        // .package(url: "https://github.com/bretsko/CultureKit", from: "0.1.0"),
       .package(url: "https://github.com/bretsko/Quick", from: "2.2.1"),
        .package(url: "https://github.com/bretsko/Nimble", from: "8.0.5"),
    ],
    targets: [
        
        .target(
            name: "TimeDurationKit",
            dependencies: ["DateKit", "MinimalBase"]),
        
        .target(
            name: "TimeKitBase",
            dependencies: ["TimeDurationKit"]),
        
        .target(
            name: "TimeTranslBase",
            dependencies: ["TimeKitBase"]),
        
        .target(
            name: "MomentKit",
            dependencies: ["TimeTranslBase"]),
        
        .target(
            name: "AnyPeriodKit",
            dependencies: ["TimeTranslBase"]),
        
        .target(
            name: "RecurrenceKit",
            dependencies: ["TimeTranslBase"]),
        
        
        .target(
            name: "TimeKit",
            dependencies: ["MomentKit", "AnyPeriodKit", "RecurrenceKit"]),
        
        
       .testTarget(
           name: "TimeKitTests",
           dependencies: ["TimeKit", "Quick", "Nimble"]),
    ]
)


