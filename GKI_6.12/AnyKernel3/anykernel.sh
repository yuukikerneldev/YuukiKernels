### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=YuukiKernel Universal GKI 6.12 by Yuuki
do.devicecheck=0
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=
device.name2=
device.name3=
device.name4=
device.name5=
supported.versions=
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
NEW_KERNEL="6.12.90-YuukiKernel-6.12.90-ResukiSU-V1"

ui_print " __  __          _    _ "
ui_print " \\ \\/ /_  _  _ _| | _(_)"
ui_print "  \\  /|_|| || | | |/ /| |"
ui_print "  / / |_|| || | |   < | |"
ui_print " /_/  \\___|\\_,_|_|\\_\\|_|"
ui_print "=========================================="
ui_print "     YUUKI KERNEL UNIVERSAL GKI 6.12"
ui_print "=========================================="
ui_print " Current Kernel : $CURRENT_KERNEL"
ui_print " New Kernel     : $NEW_KERNEL"
ui_print "=========================================="
ui_print "Thank you for using Yuuki, wish you all the best"

# boot install
dump_boot;
write_boot;
## end boot install
