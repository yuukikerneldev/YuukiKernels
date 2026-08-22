# ⚡ YuukiKernel GKI LTS - Universal Custom Android Kernel

Official high-performance **Generic Kernel Image (GKI) LTS** custom kernels compiled with **Neutron Clang 24.0.0git** (PGO/BOLT optimized) for all Android GKI devices.

---

## 🌟 Key Features & Highlights

### 🛡️ 1. ReSukiSU Root Engine (Build 35089)
- **Root Engine**: Integrated **ReSukiSU `v4.2.0-rc1`** (Build Code `35089`).
- **Tracepoint Syscall Redirect Hook**: Native GKI 2.0 tracepoint redirection hook for clean stealth root management.
- **Universal Banking Compatibility**: Designed for maximum stability and application compatibility worldwide.

### 💾 2. Memory & Swap Optimization (zRAM 6GB LZ4)
- **Aggressive Swappiness**: Pre-configured `vm.swappiness = 100`.
- **6GB LZ4 Compression**: `CONFIG_ZRAM=y` and `CONFIG_ZRAM_DEF_COMP_LZ4=y` for zero-lag multitasking and high-RAM retention.

### 🌐 3. Network Performance (TCP BBRv1)
- **Congestion Control**: `CONFIG_TCP_CONG_BBR=y` set as default system TCP congestion control for low ping in online games and fast downloads.

### 🎮 4. Schedutil Dynamic Energy Governor (Game Boost & Daily Power Saver)
- **Daily Efficiency**: Dynamic frequency scaling for extended battery life during daily use.
- **Game Turbo Response**: Fast response for smooth 60 / 90 / 120 FPS gaming:
  - ⚔️ **Liên Quân Mobile** (`com.garena.game.kgvn`)
  - ♟️ **Đấu Trường Chân Lý Mobile (TFT)** (`com.riotgames.league.teamfighttactics`)
  - 🔫 **PUBG Mobile** (`com.tencent.ig` / `com.vng.pubgmobile`)
  - 🏎️ **ZingSpeed Mobile** (`com.vng.g6.zingspeedmobile`)
  - 🔥 **Free Fire** (`com.dts.freefireth`)

### 🔋 5. BBG (Baseband & Battery Guard)
- **Modem Guard**: Restricts unnecessary baseband modem wakeups while idle or on Wi-Fi.
- **Thermal Stabilization**: Maintains sustained peak cluster performance without thermal throttling drops.

---

## 🛠️ Supported Universal Kernel Trees

| Kernel Tree | Target OS | Base Linux Kernel | Toolchain | Root Engine |
| :--- | :--- | :--- | :--- | :--- |
| **`GKI_5.10`** | Universal Android 12 / 13 / 14 | Linux 5.10.265 LTS | Neutron Clang 24 (PGO/BOLT) | ReSukiSU Build 35089 |
| **`GKI_6.12`** | Universal Android 16 | Linux 6.12.90 LTS | Neutron Clang 24 (PGO/BOLT) | ReSukiSU Build 35089 |

---

## 📱 Installation Guide

1. Reboot your device to **TWRP / OrangeFox / Custom Recovery** or **Fastboot**.
2. Flash the generated `YuukiKernel-*.zip` package.
3. Reboot to System.
4. Open **ReSukiSU Manager** to manage superuser permissions.

---

## 📄 License
Licensed under **GPL v2.0**.
Created with ❤️ by **Yuuki**.
