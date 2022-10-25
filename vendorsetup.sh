# Clone/Fetch Upstream Device Dependencies
# Device tree
echo "cloning commmon"
git clone -b A12/aljeter git@github.com:5H4ND/device_motorola_msm8937-common.git device/motorola/msm8937-common
echo ""

echo "cloning vendor blobs"
git clone -b A12/aljeter git@github.com:5H4ND/android_vendor_motorola.git vendor/motorola
echo ""

# Kernel
echo "cloning kernel and clang"
git clone -b aljeter git@github.com:5H4ND/kernel_motorola_msm8953.git kernel/motorola/msm8953
git clone --depth=1 -b master https://github.com/kdrag0n/proton-clang prebuilts/clang/host/linux-x86/proton-clang
echo ""

# DtbTools lineage
echo "cloning dtbTools lineage"
mkdir out/
mkdir out/host/
mkdir out/host/linux-x86/
mkdir out/host/linux-x86/bin
cd out/host/linux-x86/bin
wget -c https://github.com/krasCGQ/scripts/raw/master/prebuilts/bin/dtbToolLineage
chmod +777 dtbToolLineage
cd ../../../..
echo ""

# HAL's
echo "Cloning AEX Hals"
rm -rf hardware/qcom-caf/msm8996/audio
git clone https://github.com/AospExtended/platform_hardware_qcom_audio -b 12.x-caf-msm8996 hardware/qcom-caf/msm8996/audio
rm -rf hardware/qcom-caf/msm8996/media
git clone https://github.com/AospExtended/platform_hardware_qcom_media -b 12.x-caf-msm8996 hardware/qcom-caf/msm8996/media
rm -rf hardware/qcom-caf/msm8996/display
git clone https://github.com/AospExtended/platform_hardware_qcom_display -b 12.x-caf-msm8996 hardware/qcom-caf/msm8996/display
echo ""

