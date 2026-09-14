#!/bin/sh
# by pp4mn

LAUNCHER="/files/portable/Firefox-portable64/LAUNCH"

if [ ! -x "$LAUNCHER" ]; then
    echo "ERROR: no se encuentra el lanzador de Firefox:"
    echo "$LAUNCHER"
    exit 1
fi

if ! command -v kdocker >/dev/null 2>&1; then
    echo "ERROR: kdocker no está instalado o no está en el PATH."
    exit 1
fi

while true; do
    # Inicia Firefox y lo envía a la bandeja del sistema.
    kdocker -m "$LAUNCHER" --private-window &
    PID=$!

    # Si Firefox se cierra de verdad, vuelve a iniciarlo en la bandeja.
    wait "$PID"
    sleep 1
done
