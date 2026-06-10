// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "GoCrossSDKDeps",

    products: [
        .library(
            name: "GoCrossAdsDependencies",
            type: .static,
            targets: ["GoCrossAdsDependenciesWrapper"]
        ),
    ],

    targets: [
        .binaryTarget(name: "GoogleMobileAds", path: "Frameworks/Ads/GoogleMobileAds.xcframework.zip"),
        .binaryTarget(name: "PAGAdSDK", path: "Frameworks/Ads/PAGAdSDK.xcframework.zip"),
        .binaryTarget(name: "TPAdMobAdapter", path: "Frameworks/Ads/TPAdMobAdapter.xcframework.zip"),
        .binaryTarget(name: "TPCrossAdapter", path: "Frameworks/Ads/TPCrossAdapter.xcframework.zip"),
        .binaryTarget(name: "TPExchange", path: "Frameworks/Ads/TPExchange.xcframework.zip"),
        .binaryTarget(name: "TPPangleAdapter", path: "Frameworks/Ads/TPPangleAdapter.xcframework.zip"),
        .binaryTarget(name: "TPUnityAdapter", path: "Frameworks/Ads/TPUnityAdapter.xcframework.zip"),
        .binaryTarget(name: "TradPlusAds", path: "Frameworks/Ads/TradPlusAds.xcframework.zip"),
        .binaryTarget(name: "UnityAds", path: "Frameworks/Ads/UnityAds.xcframework.zip"),
        .binaryTarget(name: "UserMessagingPlatform", path: "Frameworks/Ads/UserMessagingPlatform.xcframework.zip"),

        .target(
            name: "GoCrossAdsDependenciesWrapper",
            dependencies: [
                "GoogleMobileAds",
                "PAGAdSDK",
                "TPAdMobAdapter",
                "TPCrossAdapter",
                "TPExchange",
                "TPPangleAdapter",
                "TPUnityAdapter",
                "TradPlusAds",
                "UnityAds",
                "UserMessagingPlatform"
            ],
            path: "Sources"
        )
    ]
)