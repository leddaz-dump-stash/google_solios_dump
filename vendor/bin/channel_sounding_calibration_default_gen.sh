#! /vendor/bin/sh

# Due to the lack of if-else statements in init.rc for file existence detection,
# a shell script is necessary to create a default file if it doesn't already exist.

TARGET="/data/vendor/bluetooth/calibration/channel_sounding.json"

if [ ! -f "$TARGET" ]; then
    echo "{}" > $TARGET
    chmod 0406 $TARGET
    chown bluetooth:bluetooth $TARGET
fi
