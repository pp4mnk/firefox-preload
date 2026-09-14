#!/bin/sh
# Firefox portable en la bandeja del sistema mediante KDocker
# by pp4mn

LAUNCHER="/files/portable/Firefox-portable64/LAUNCH"

# Comprueba que existe el lanzador de Firefox.
if [ ! -x "$LAUNCHER" ]; then
    echo "ERROR: no se encuentra el lanzador de Firefox:"
    echo "$LAUNCHER"
    exit 1
fi

# Comprueba que KDocker está instalado.
if ! command -v kdocker >/dev/null 2>&1; then
    echo "ERROR: kdocker no está instalado o no está en el PATH."
    exit 1
fi

while true; do
    # -o: inicia Firefox oculto en el tray.
    # -q: no muestra mensajes emergentes de KDocker.
    # Firefox se abre en modo normal, no en navegación privada.
    kdocker -o -q "$LAUNCHER" &
    PID=$!

    # Si Firefox se cierra completamente, vuelve a iniciarlo.
    wait "$PID"
    sleep 1
done
