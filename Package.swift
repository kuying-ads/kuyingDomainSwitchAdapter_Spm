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
            url: "https://github.com/kuying-ads/kuyingSDK_Spm.git", "6.0.0"..."999.0.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SmartdigimktCNDomainSwitchAdapter",
            url: "https://sz-kuying-sdk.oss-accelerate.aliyuncs.com/pkgs/SDK/iOS_v2/cn/DomainSwitch/v6.0.0/SmartdigimktCNDomainSwitchAdapter.zip",
            checksum: "9d57bc8eaa40d3ae7fc5a7dda80428650b9d2b5a0391a3dd2f0e47e4bcfce617"
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
