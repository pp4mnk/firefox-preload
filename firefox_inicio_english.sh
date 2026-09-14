#!/bin/sh
# by pp4mn

LAUNCHER="/files/portable/Firefox-portable64/LAUNCH"

if [ ! -x "$LAUNCHER" ]; then
    echo "ERROR: Firefox launcher not found:"
    echo "$LAUNCHER"
    exit 1
fi

if ! command -v kdocker >/dev/null 2>&1; then
    echo "ERROR: KDocker is not installed or is not in the PATH."
    exit 1
fi

while true; do
    # Starts Firefox and sends it to the system tray.
    kdocker -m "$LAUNCHER" --private-window &
    PID=$!

    # If Firefox is actually closed, restart it in the system tray.
    wait "$PID"
    sleep 1
done
