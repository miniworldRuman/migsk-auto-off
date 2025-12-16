#!/system/bin/sh
while true; do
    capacity=$(cat /sys/class/power_supply/battery/capacity 2>/dev/null)
    if [ -n "$capacity" ] && [ "$capacity" -le 3 ] && [ "$capacity" -gt 0 ]; then
        i=30
        while [ $i -gt 0 ]; do
            su -c "cmd notification post -S bigtext -t 'Battery Critical' 'battery_shutdown' 'Shutting down in $i seconds...'"
            sleep 1
            i=$((i-1))
        done
        su -c "reboot -p"
        break
    fi
    sleep 60
done