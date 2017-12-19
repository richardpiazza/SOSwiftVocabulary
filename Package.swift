// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SOSwiftVocabulary",
    products: [
        .library(name: "SOSwiftVocabulary", targets: ["SOSwiftVocabulary"]),
    ],
    dependencies: [
        
    ],
    targets: [
        .target(name: "SOSwiftVocabulary", dependencies: [], path: "Sources"),
        .testTarget(name: "SOSwiftVocabularyTests", dependencies: ["SOSwiftVocabulary"], path: "Tests")
    ]
)
