#!/bin/sh
case "$1" in
  post)
    (
      sleep 2
      /usr/bin/dinitctl restart iio-sensor-proxy-libssc
      /usr/bin/dinitctl restart hexagonrpcd-sdsp
      /usr/bin/dinitctl restart iio-sensor-proxy-libssc
    ) >/dev/null 2>&1 &
  ;;
esac
