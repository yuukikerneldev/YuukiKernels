### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Yuuki-ResukiSU by Yuuki
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=wrist
device.name2=aristotle
device.name3=
device.name4=
device.name5=
supported.versions=12, 13, 14, 15
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

### AnyKernel install
# boot shell variables
BLOCK=boot;
IS_SLOT_DEVICE=auto;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

CURRENT_KERNEL=$(cat /proc/sys/kernel/osrelease 2>/dev/null || uname -r 2>/dev/null || echo "Unknown")
NEW_KERNEL="5.10.265-YuukiKernel-5.10.265-ResukiSU-V1"

ui_print " __  __          _    _ "
ui_print " \\ \\/ /_  _  _ _| | _(_)"
ui_print "  \\  /|_|| || | | |/ /| |"
ui_print "  / / |_|| || | |   < | |"
ui_print " /_/  \\___|\\_,_|_|\\_\\|_|"
ui_print "=========================================="
ui_print "          YUUKI KERNEL V2"
ui_print "=========================================="
ui_print " Current Kernel : $CURRENT_KERNEL"
ui_print " New Kernel     : $NEW_KERNEL"
ui_print "=========================================="
ui_print "Thank you for using Yuuki, wish you all the best"

# boot install
dump_boot;
write_boot;
## end boot install
