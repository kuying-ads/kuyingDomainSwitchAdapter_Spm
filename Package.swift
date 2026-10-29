// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SmartdigimktCNDomainSwitchAdapter",
    platforms: [.iOS(.v10)],
    products: [
        .library(
            name: "SmartdigimktCNDomainSwitchAdapter",
            targets: [
                "SmartdigimktCNDomainSwitchAdapter",
                "SmartdigimktCNDomainSwitchAdapterSupport"
            ]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/TakuMediation-packages/SmartdigimktCNSDK_SPM.git", "6.5.99"..."999.0.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SmartdigimktCNDomainSwitchAdapter",
            url: "https://sz-kuying-sdk.oss-accelerate.aliyuncs.com/pkgs/SDK/iOS_v2/cn/DomainSwitch/v6.5.99/SmartdigimktCNDomainSwitchAdapter.zip",
            checksum: "d15bb53e9e00d844c855a7dd6b60ae5de5860d623d156721c3148a429ebbbe53"
        ),
        // 包装 target：同时依赖 Adapter 的 binary 和 CNSDK 的 product
        .target(
            name: "SmartdigimktCNDomainSwitchAdapterSupport",
            dependencies: [
                "SmartdigimktCNDomainSwitchAdapter",
                .product(
                    name: "SmartdigimktCNSDK",
                    package: "SmartdigimktCNSDK_SPM"
                )
            ]
        )
    ]
)
