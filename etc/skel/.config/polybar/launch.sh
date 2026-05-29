#!/usr/bin/env bash

# Finaliza barras existentes
killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 1; done

# Inicia Polybar
polybar main &
