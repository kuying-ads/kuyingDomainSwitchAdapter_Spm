// swift-tools-version:5.3
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
            url: "https://github.com/TakuMediation-packages/SmartdigimktCNSDK_SPM.git", "6.0.0"..."999.0.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SmartdigimktCNDomainSwitchAdapter",
            url: "https://sz-kuying-sdk.oss-accelerate.aliyuncs.com/pkgs/SDK/iOS_v2/cn/DomainSwitch/v6.0.0/SmartdigimktCNDomainSwitchAdapter.zip",
            checksum: "2612ee9b442bdd80f7f52ec1332f69b1775749ceee5a1966aacb5f0b83b7e97b"
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
