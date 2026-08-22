<div align="center">

# ⚡ YuukiKernel Universal GKI LTS

[![Build Status](https://img.shields.io/github/actions/workflow/status/yuukikerneldev/YuukiKernels/build-kernels.yml?branch=main&style=flat-square&logo=github&label=CI%20Build)](https://github.com/yuukikerneldev/YuukiKernels/actions)
[![Latest Release](https://img.shields.io/github/v/release/yuukikerneldev/YuukiKernels?style=flat-square&color=blue&label=Release)](https://github.com/yuukikerneldev/YuukiKernels/releases)
[![License](https://img.shields.io/github/license/yuukikerneldev/YuukiKernels?style=flat-square&color=green)](LICENSE)
[![Toolchain](https://img.shields.io/badge/Toolchain-Neutron%20Clang%2024-purple?style=flat-square)](https://github.com/Neutron-Clang)

A high-performance, power-efficient Generic Kernel Image (GKI) LTS custom kernel for Android devices running GKI 5.10 and 6.12.

</div>

---

## 📖 Table of Contents
- [Overview](#-overview)
- [Key Features](#-key-features)
- [Supported Kernels](#-supported-kernels)
- [Installation](#-installation)
- [Disclaimer](#-disclaimer)
- [Credits & Acknowledgments](#-credits--acknowledgments)

---

## 🚀 Overview

**YuukiKernel** is designed to deliver sustained gaming throughput, improved memory management, and power efficiency without sacrificing system stability. Built using **Neutron Clang 24.0.0git** with Profile-Guided Optimization (PGO) and Binary Optimization and Layout Tool (BOLT).

---

## ⚡ Key Features

| Domain | Feature | Description |
| :--- | :--- | :--- |
| **Toolchain** | **Neutron Clang 24** | LLVM 24.0.0git toolchain with PGO/BOLT optimizations |
| **Root Engine** | **ReSukiSU Build 35089** | Native Tracepoint Syscall Redirect Hook (`v4.2.0-rc1`) |
| **Memory** | **zRAM 6GB LZ4** | Pre-configured `vm.swappiness = 100` for seamless multitasking |
| **Networking** | **TCP BBRv1** | Optimized TCP congestion control for low ping in gaming |
| **CPU Scaling** | **Schedutil Tuned** | Dynamic frequency ramp-up for games (AoV, TFT, PUBG, Speed Drifters, Free Fire) |
| **Battery** | **BBG Guard** | Baseband & Battery Guard for idle power savings |

---

## 🛠️ Supported Kernels

| Kernel Tree | Target Android | Linux Kernel | Toolchain | Root Engine |
| :--- | :--- | :--- | :--- | :--- |
| **`GKI_5.10`** | Android 12 / 13 / 14 | 5.10.265 LTS | Neutron Clang 24 | ReSukiSU 35089 |
| **`GKI_6.12`** | Android 16 | 6.12.90 LTS | Neutron Clang 24 | ReSukiSU 35089 |

---

## 📱 Installation

1. Boot into custom recovery (TWRP / OrangeFox).
2. Create a full backup of your existing `boot` and `vendor_boot` partitions.
3. Flash the `YuukiKernel-*.zip` package.
4. Reboot to System.

---

## ⚠️ Disclaimer

Flashing custom kernels involves inherent risks. Always maintain a current backup before modifying system partitions. The developers are not responsible for bricked devices or data loss.

---

## 🤝 Credits & Acknowledgments

Special thanks to all open-source projects and developers:

- **[Linux Kernel](https://www.kernel.org/)** & **[AOSP Project](https://source.android.com/)**: Base GKI kernel tree
- **[ReSukiSU](https://github.com/ReSukiSU/ReSukiSU)**: Advanced root engine
- **[KernelSU](https://github.com/tiann/KernelSU)**: Created by [tiann](https://github.com/tiann)
- **[SuSFS](https://gitlab.com/simonpunk/susfs4ksu)**: Created by [simonpunk](https://gitlab.com/simonpunk)
- **[Neutron Clang](https://github.com/Neutron-Clang)**: LLVM PGO/BOLT toolchain by Dakkshesh & team
- **[AnyKernel3](https://github.com/osm0sis/AnyKernel3)**: Flashable installer package by [osm0sis](https://github.com/osm0sis)

---

## 📄 License

This project is licensed under the **GNU General Public License v2.0**.
Created with ❤️ by **Yuuki**.
