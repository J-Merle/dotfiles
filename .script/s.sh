#!/usr/bin/env bash

# Disable unicode.
LC_ALL=C
LANG=C

ask_before_run() {
    read -p "Run '$1' (y/n)?" choice
    case "$choice" in
        y|Y ) eval $1;;
        n|N ) exit;;
        * ) exit;;
    esac
}

device=$1
MAX_SIZE=$(lsblk -dpbo NAME,SIZE | grep $device | awk '{print $2/1024^2}')

clear_command="sudo dd if=/dev/zero of=$device bs=1k count=2048"
echo "1 - Fill the device $device with 0"
ask_before_run "$clear_command"

partition_table_command="sudo parted $device mklabel msdos"
echo "2 - Create MSDOS partition table"
ask_before_run "$partition_table_command"

primary_partition_command="sudo parted -a none $device mkpart primary fat32 0 $MAX_SIZE"
echo "3 - Create primary partition"
ask_before_run "$primary_partition_command"

read -p "4 - Choose a name for your partition : " name
filesystem_command="sudo mkfs.vfat -n \"$name\" $device""1"
ask_before_run "$filesystem_command"
