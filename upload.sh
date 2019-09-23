#!/bin/bash -e

upload() {
  cd aosp/out/target/product/xiaomi/kenzo
  curl --upload-file ./PixelExperience_Plus*kenzo*.zip https://transfer.sh
}

upload
