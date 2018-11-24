// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "SOSwiftVocabulary",
    products: [
        .library(name: "SOSwiftVocabulary", targets: ["SOSwiftVocabulary"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(name: "SOSwiftVocabulary", dependencies: [], path: "Sources/SOSwiftVocabulary"),
        .testTarget(name: "SOSwiftVocabularyTests", dependencies: ["SOSwiftVocabulary"], path: "Tests/SOSwiftVocabularyTests"),
    ]
)
