#!/bin/bash
set -e

BUILD_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
KERNEL_DIR="${BUILD_ROOT}/common"
ANYKERNEL_DIR="${BUILD_ROOT}/AnyKernel3"

if [ -d "${BUILD_ROOT}/../neutron-clang" ]; then
    NEUTRON_CLANG="${BUILD_ROOT}/../neutron-clang"
else
    NEUTRON_CLANG="/mnt/Shared/YuukiProjects/YuukiKernels/neutron-clang"
fi

VERSION_FILE="${BUILD_ROOT}/build_version.txt"
if [ ! -f "$VERSION_FILE" ]; then
    echo 1 > "$VERSION_FILE"
fi
BUILD_NUM=$(cat "$VERSION_FILE")

SUBLEVEL=$(grep -E "^SUBLEVEL =" "${KERNEL_DIR}/Makefile" | awk '{print $3}')
LTS_VERSION="5.10.${SUBLEVEL}"
LOCAL_VERSION="-YuukiKernel-${LTS_VERSION}-ResukiSU-V${BUILD_NUM}"
FULL_VERSION="${LTS_VERSION}${LOCAL_VERSION}"

echo "=================================================="
echo "Starting Custom Android GKI 5.10 (Neutron Clang) Build Cycle"
echo "Kernel version: ${LTS_VERSION}"
echo "Local version: ${LOCAL_VERSION}"
echo "Full Version Tag: ${FULL_VERSION}"
echo "=================================================="

export PATH="${NEUTRON_CLANG}/bin:${PATH}"
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
export LLVM=1
export LLVM_IAS=1

echo "=== NEUTRON CLANG DEBUG ==="
which clang || true
clang --version || true
echo "==========================="

touch "${KERNEL_DIR}/.scmversion"

echo "[+] Generating GKI 5.10 kernel configuration..."
cd "$KERNEL_DIR"
make gki_defconfig && make olddefconfig

echo "[+] Compiling GKI 5.10 kernel Image.gz with Neutron Clang..."
make -j$(nproc) LOCALVERSION="${LOCAL_VERSION}" Image.gz || make -j$(nproc) LOCALVERSION="${LOCAL_VERSION}" Image

if [ -f "arch/arm64/boot/Image.gz" ]; then
    IMAGE_PATH="arch/arm64/boot/Image.gz"
elif [ -f "arch/arm64/boot/Image" ]; then
    IMAGE_PATH="arch/arm64/boot/Image"
else
    echo "ERROR: Kernel image not found!"
    exit 1
fi

echo "[+] GKI 5.10 Kernel build successful! Image: ${IMAGE_PATH}"

echo "[+] Packaging with AnyKernel3..."
cp "${IMAGE_PATH}" "$ANYKERNEL_DIR/Image.gz"
cd "$ANYKERNEL_DIR"

sed -i "s/^NEW_KERNEL=.*/NEW_KERNEL=\"${FULL_VERSION}\"/" "anykernel.sh"

ZIP_NAME="${BUILD_ROOT}/YuukiKernel-${LTS_VERSION}-ResukiSU-V${BUILD_NUM}.zip"
rm -f "$ZIP_NAME"

zip -r "$ZIP_NAME" . -x ".git*" -x "README.md" -x "*.zip"

BACKUP_DIR="${BUILD_ROOT}/backups"
mkdir -p "$BACKUP_DIR"
cp "$ZIP_NAME" "$BACKUP_DIR/"

PC_EXPORT="/home/yuuki/Downloads/Kernels Build"
mkdir -p "$PC_EXPORT" 2>/dev/null || true
cp "$ZIP_NAME" "$PC_EXPORT/" 2>/dev/null || true

echo "=================================================="
echo "SUCCESS: Flashable GKI 5.10 (Neutron Clang) ZIP created successfully!"
echo "Artifact: ${ZIP_NAME}"
echo "=================================================="
