#!/sbin/sh

# We use this shell script because the script will follow symlinks and
# different trees will use different binaries to supply the setenforce
# tool. Before M we use toolbox, M and beyond will use toybox. The init
# binary and init.rc will not follow symlinks.

suffix=$(getprop ro.boot.slot_suffix)
if [ -z "$suffix" ]; then
	suf=$(getprop ro.boot.slot)
	suffix="_$suf"
fi

syspath="/dev/block/bootdevice/by-name/vendor$suffix"


mkdir /v
mount -t ext4 -o ro "$syspath" /v

cp /v/lib/modules/nt36xxx_driver.ko /sbin

insmod /sbin/nt36xxx_driver.ko

umount /v