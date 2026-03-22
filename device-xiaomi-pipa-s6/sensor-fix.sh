#!/bin/sh
case "$1" in
  post)
    (
      sleep 2
      /usr/bin/s6-svc -r /run/service/iio-sensor-proxy-libssc
      /usr/bin/s6-svc -r /run/service/hexagonrpcd-sdsp
      /usr/bin/s6-svc -r /run/service/iio-sensor-proxy-libssc
    ) >/dev/null 2>&1 &
  ;;
esac
