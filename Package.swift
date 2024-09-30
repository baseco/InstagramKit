// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "InstagramKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "InstagramKit",
            targets: ["InstagramKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/baseco/AFNetworking.git", .revision("75441a7d92ac7c37e705d4c744f279b639081253")),
        // .package(url: "https://github.com/kishikawakatsumi/UICKeyChainStore.git", from: "2.2.1")
    ],
    targets: [
        .target(
            name: "InstagramKit",
            dependencies: [
                "AFNetworking"
            ],
            path: "InstagramKit/Classes",
            exclude: [], // Exclude any files if necessary
            cSettings: [
             .headerSearchPath("."),
             .headerSearchPath("Engine"),
             .headerSearchPath("Models")
            ]
        )//,
        // .target(
        //     name: "InstagramKit-without-UICKeyChainStore",
        //     dependencies: [
        //         "AFNetworking"
        //     ],
        //     path: "InstagramKit/Classes",
        //     exclude: [], // Exclude any files if necessary
        //     cSettings: []
        // ),
        // .target(
        //     name: "InstagramKit-UICKeyChainStore",
        //     dependencies: [
        //         "AFNetworking",
        //         .product(name: "UICKeyChainStore", package: "UICKeyChainStore")
        //     ],
        //     path: "InstagramKit/Classes",
        //     cSettings: [
        //         .define("INSTAGRAMKIT_INCLUDE_UICKEYCHAINSTORE")
        //     ]
        // )
    ]
)
