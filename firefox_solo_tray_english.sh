#!/bin/sh
# Portable Firefox in the system tray using KDocker
# by pp4mn

LAUNCHER="/files/portable/Firefox-portable64/LAUNCH"

# Checks that the Firefox launcher exists.
if [ ! -x "$LAUNCHER" ]; then
    echo "ERROR: Firefox launcher not found:"
    echo "$LAUNCHER"
    exit 1
fi

# Checks that KDocker is installed.
if ! command -v kdocker >/dev/null 2>&1; then
    echo "ERROR: KDocker is not installed or is not in the PATH."
    exit 1
fi

while true; do
    # -o: starts Firefox hidden in the system tray.
    # -q: suppresses KDocker pop-up messages.
    # Firefox opens in normal mode, not in private browsing mode.
    kdocker -o -q "$LAUNCHER" &
    PID=$!

    # If Firefox is closed completely, restart it.
    wait "$PID"
    sleep 1
done
