#!/bin/bash -e

clone() {
mkdir aosp
cd aosp
  git clone https://github.com/PixelExperience-Devices/device_xiaomi_kenzo.git -b pie device/xiaomi/kenzo
  git clone https://github.com/baalajimaestro/msm8956-common.git -b pie device/xiaomi/msm8956-common
  git clone https://github.com/AnggaR96s/android_kernel_xiaomi_msm8956-1.git -b pie kernel/xiaomi/msm8956 --depth=1
  git clone https://github.com/baalajimaestro/vendor_xiaomi_kenzo.git -b pie vendor/xiaomi --depth=1
  cd ..
}

clone
