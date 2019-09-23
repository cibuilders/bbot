#!/bin/bash -e

make() {
  cd aosp
  source build/envsetup.sh
  echo 'export USE_CCACHE=1' >> ~/.bashrc
  source ~/.bashrc
  ccache -M 50
  export ALLOW_MISSING_DEPENDENCIES=true
  export KBUILD_BUILD_USER="AnggaR96s"
  export KBUILD_BUILD_HOST="CI-BuildBot"
  lunch aosp_kenzo-userdebug
  #mka bacon
  mka bacon -j8
  cd ..
}

make
