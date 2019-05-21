# twrp_device_huawei_hwp6_u06

Device configuration for Huawei Ascend P6 (Omni 6.0). You can use this to build TWRP recovery with Omni 6.0 source.

## Features

- Full TWRP experience
- Can flash and backup all ROMs
- ADB is accessible

## How to Build

1. Download Omni 6.0 source. [Follow this guide](https://github.com/omnirom/android#getting-started) but replace `android-9.0` with `android-6.0`.
2. Clone the [kernel source](https://github.com/AnClark/kernel-huawei-p6) into Omni source's `kernel/hwp6_u06` folder.
3. Run the following commands in Omni source's root:
  ```
  source build/envsetup.sh
  lunch hwp6_u06-userdebug
  make recoveryimage
  ```
4. When succeed, you will get the built recovery image on the bottom of stdout.

## NOTICE

Huawei P6 is an early leadership model, so it has an ancient kernel which **MUST BE BUILT WITH AN OLDER TOOLCHAIN**, or it will stuck at boot! Don't worry, the toolchain is well-prepared in this repo, so you needn't to configure yourself.
