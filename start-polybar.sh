#!/bin/bash

# Terminate any existing Polybar instances
killall -q polybar

# Wait until Polybar processes are terminated
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar
polybar example &

echo "Polybar launched..."
