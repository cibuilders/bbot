#!/bin/bash -e

get_sources() {
  mkdir aosp
  cd aosp

  repo init --depth=1 -u https://github.com/PixelExperience/manifest -b pie-plus
  repo sync -c --no-tags --no-clone-bundle -j8 -q

  cd ..
}

get_sources
