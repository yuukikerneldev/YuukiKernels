# ⚡ YuukiKernel GKI LTS - Universal Custom Android Kernel

Official high-performance **Generic Kernel Image (GKI) LTS** custom kernels compiled with **Neutron Clang 24.0.0git** (PGO/BOLT optimized) for Android 12, 13, 14, 15, and 16.

---

## 🌟 Key Features & Highlights

### 🛡️ 1. ReSukiSU & SuSFS Bootloader Lock Spoofing
- **Root Engine**: Integrated **ReSukiSU `v4.2.0-rc1`** (Build Code `35063`).
- **SuSFS `v2.2.0` Integration**:
  - Full Inline Hooks across 7 C source files (`sys.c`, `exec.c`, `open.c`, `read_write.c`, `stat.c`, `reboot.c`, `input.c`).
  - **Bootloader Lock Status Spoofing**: Automatically spoofs `/proc/cmdline` to report `androidboot.verifiedbootstate=green`, `androidboot.flash.locked=1`, and `androidboot.veritymode=enforcing`.
  - **PROC/BOOTCONFIG Masking**: Hides unlocked bootloader flags from `/proc/bootconfig`.
  - **PROC Mount Hiding**: Hides KSU/Magisk overlayfs mounts from `/proc/mounts` and `/proc/self/mountinfo`.
  - **100% Vietnam & Global Banking App Bypass**: Bypasses strict detection in Vietcombank, Techcombank, MB Bank, Agribank, VietinBank, MoMo, ZaloPay, BIDV, VPBank, ACB, Sacombank, HDBank, and Google Play Integrity.

### 💾 2. Memory & Swap Optimization (zRAM 6GB LZ4)
- **Aggressive Swappiness**: Pre-configured `vm.swappiness = 100` in `mm/vmscan.c`.
- **6GB LZ4 Compression**: `CONFIG_ZRAM=y` and `CONFIG_ZRAM_DEF_COMP_LZ4=y` for zero-lag multitasking and high-ram retention.

### 🌐 3. Network Performance (TCP BBRv1)
- **Congestion Control**: `CONFIG_TCP_CONG_BBR=y` set as default system TCP congestion control for low ping in online multiplayer games and high-throughput downloads.

### 🎮 4. Schedutil Dynamic Energy Governor (Game Boost & Daily Power Saver)
- **Daily Efficiency**: Deep idle states (`down_rate_limit_us`) for extended battery life during daily use.
- **Game Turbo Response**: Ultra-fast frequency ramp-up (`up_rate_limit_us = 500`) for flat 60 / 90 / 120 FPS in target games:
  - ⚔️ **Liên Quân Mobile** (`com.garena.game.kgvn`)
  - ♟️ **Đấu Trường Chân Lý Mobile (TFT)** (`com.riotgames.league.teamfighttactics`)
  - 🔫 **PUBG Mobile** (`com.tencent.ig` / `com.vng.pubgmobile`)
  - 🏎️ **ZingSpeed Mobile** (`com.vng.g6.zingspeedmobile`)
  - 🔥 **Free Fire** (`com.dts.freefireth`)

### 🔋 5. BBG (Baseband & Battery Guard)
- **Modem Guard**: Restricts unnecessary baseband modem wakeups while idle or on Wi-Fi.
- **Thermal Stabilization**: Maintains sustained peak cluster performance without thermal throttling drops.

---

## 🛠️ Supported Kernel Trees

| Kernel Tree | Target Android OS | Base Linux Kernel | Toolchain | Root / Stealth |
| :--- | :--- | :--- | :--- | :--- |
| **`GKI_5.10`** | Android 12 / 13 / 14 | Linux 5.10 LTS | Neutron Clang 24 (PGO/BOLT) | ReSukiSU + SuSFS 2.2.0 |
| **`GKI_6.12`** | Android 16 | Linux 6.12.90 LTS | Neutron Clang 24 (PGO/BOLT) | ReSukiSU + SuSFS 2.2.0 |

---

## 🏗️ Building From Source

### Prerequisites
Ensure **Neutron Clang 24** is present at `/mnt/Shared/YuukiProjects/YuukiKernels/neutron-clang`.

### Build Commands
To build **GKI 6.12 LTS**:
```bash
cd /mnt/Shared/YuukiProjects/YuukiKernels/GKI_6.12
./build.sh
```

To build **GKI 5.10 LTS**:
```bash
cd /mnt/Shared/YuukiProjects/YuukiKernels/GKI_5.10
chmod +x build.sh
./build.sh
```

Flashable zips are automatically output to:
`/home/yuuki/Downloads/Kernels Build/`

---

## 📱 Installation Guide

1. Reboot your device to **TWRP / OrangeFox / Custom Recovery** or **Fastboot**.
2. Flash the generated `YuukiKernel-ResukiSU-Neutron-GKI*.zip`.
3. Reboot to System.
4. Open **ReSukiSU Manager** to manage superuser permissions.

---

## 📄 License
Licensed under **GPL v2.0**.
Created with ❤️ by **Yuuki**.
