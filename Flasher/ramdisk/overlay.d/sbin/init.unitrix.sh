#!/system/bin/sh

# Schedutil Governor Settings
echo 1 > /sys/devices/system/cpu/cpu0/online
echo "schedutil" > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor
echo 1401600 > /sys/devices/system/cpu/cpufreq/schedutil/hispeed_freq
echo 85 > /sys/devices/system/cpu/cpufreq/schedutil/hispeed_load
echo 0 > /sys/devices/system/cpu/cpufreq/schedutil/pl
echo 0 > /sys/devices/system/cpu/cpufreq/schedutil/up_rate_limit_us
echo 0 > /sys/devices/system/cpu/cpufreq/schedutil/down_rate_limit_us
echo 652800 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq

# 512 readahead KB for mmcblk0 and mmcblk1 io scheds
echo 512 > /sys/block/mmcblk0/queue/read_ahead_kb 
echo 512 > /sys/block/mmcblk1/queue/read_ahead_kb

# Default IO Scheduler
echo cfq > /sys/block/mmcblk0/queue/scheduler
echo cfq > /sys/block/mmcblk1/queue/scheduler
