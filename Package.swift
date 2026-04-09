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
        .package(url: "https://github.com/baseco/AFNetworking.git", .revision("c89d2f5207c0721cbb1f3dd5ac54000c34dafcab")),
        // .package(url: "https://github.com/kishikawakatsumi/UICKeyChainStore.git", from: "2.2.1")
    ],
    targets: [
        .target(
            name: "InstagramKit",
            dependencies: [
                "AFNetworking"
            ],
            path: "InstagramKit",
            publicHeadersPath: "include",
            cSettings: [
             .headerSearchPath("include/InstagramKit")
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
