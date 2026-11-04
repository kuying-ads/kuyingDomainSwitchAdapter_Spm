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
            url: "https://github.com/kuying-ads/kuyingSDK_Spm.git", "6.0.1"..."999.0.0"
        )
    ],
    targets: [
        .binaryTarget(
            name: "SmartdigimktCNDomainSwitchAdapter",
            url: "https://sz-kuying-sdk.oss-accelerate.aliyuncs.com/pkgs/SDK/iOS_v2/cn/DomainSwitch/v6.0.1/SmartdigimktCNDomainSwitchAdapter.zip",
            checksum: "838ff198e27e4debbcbc2b415ecfbb8196b698ce58b35b9fefe39b2d92f81d73"
        ),
        // 包装 target：同时依赖 Adapter 的 binary 和 CNSDK 的 product
        .target(
            name: "SmartdigimktCNDomainSwitchAdapterSupport",
            dependencies: [
                "SmartdigimktCNDomainSwitchAdapter",
                .product(
                    name: "SmartdigimktCNSDK",
                    package: "kuyingSDK_Spm"
                )
            ]
        )
    ]
)
