#!/bin/sh
case "$1" in
  post)
    (
      sleep 2
      /sbin/rc-service iio-sensor-proxy-libssc restart
      /sbin/rc-service hexagonrpcd-sdsp restart
      /sbin/rc-service iio-sensor-proxy-libssc restart
    ) >/dev/null 2>&1 &
  ;;
esac
