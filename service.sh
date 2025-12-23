#!/system/bin/sh

# ==============================
# BOOT
# ==============================
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 1
done

# ==============================
# MAIN
# ==============================
ROZEN="/system/bin/rozencharge"
[ -x "$ROZEN" ] || exit 0
"$ROZEN" >/dev/null 2>&1 &