# YuukiKernel Universal GKI LTS

A clean, performance-oriented custom GKI kernel for Android devices running GKI 5.10 and 6.12 LTS. Built with Neutron Clang 24.

---

## Features

- **Compiler**: Neutron Clang 24.0.0git (PGO/BOLT optimized)
- **Root**: ReSukiSU v4.2.0-rc1 (Build 35089) with Tracepoint Syscall Redirect
- **Memory**: zRAM 6GB LZ4 (`vm.swappiness = 100`)
- **Network**: TCP BBRv1 congestion control
- **Governor**: Tuned `schedutil` governor (optimized for battery life & game performance in AoV, TFT, PUBG, Speed Drifters, Free Fire)
- **Guard**: BBG (Baseband & Battery Guard)

---

## Supported Kernels

| Tree | Target Android | Linux Kernel | Toolchain |
| :--- | :--- | :--- | :--- |
| **`GKI_5.10`** | Android 12 / 13 / 14 | 5.10.265 LTS | Neutron Clang 24 |
| **`GKI_6.12`** | Android 16 | 6.12.90 LTS | Neutron Clang 24 |

---

## Installation

1. Reboot to recovery (TWRP / OrangeFox / Custom Recovery).
2. Flash the `YuukiKernel-*.zip` package.
3. Reboot to system and open ReSukiSU Manager.

---

## Credits & Acknowledgments

Special thanks to all developers and open-source projects that made **YuukiKernel** possible:

- **[Linux Kernel](https://www.kernel.org/)** & **[Android Open Source Project (AOSP)](https://source.android.com/)**: For the GKI LTS base kernel.
- **[ReSukiSU](https://github.com/ReSukiSU/ReSukiSU)**: For the advanced root engine.
- **[KernelSU](https://github.com/tiann/KernelSU)**: Created by [tiann](https://github.com/tiann) and contributors.
- **[SuSFS](https://gitlab.com/simonpunk/susfs4ksu)**: Created by [simonpunk](https://gitlab.com/simonpunk).
- **[Neutron Clang](https://github.com/Neutron-Clang)**: Created by Dakkshesh & team for LLVM PGO/BOLT toolchain optimizations.
- **[AnyKernel3](https://github.com/osm0sis/AnyKernel3)**: Created by [osm0sis](https://github.com/osm0sis) for universal recovery flashable packages.
- **[payload-dumper-go](https://github.com/ssut/payload-dumper-go)**: Created by [ssut](https://github.com/ssut).

---

## 📄 License
Licensed under **GPL v2.0**.
Created with ❤️ by **Yuuki**.
