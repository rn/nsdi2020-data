#! /bin/sh

. ./qemu-kvm-common.sh

qemu-system-x86_64 \
    ${QEMU_COMMON} \
    -no-acpi \
    -device virtio-blk-pci,drive=d0 \
        -drive if=none,id=d0,format=raw,file=../img/boot-time-disk.img \
    -kernel ../img/boot-time-pci-vmlinuz \
    -append "root=/dev/vda init=/init"

# -append "root=/dev/vda init=/init console=ttyS0"
# -device virtio-net-device,netdev=n0,mac=5a:39:97:06:c0:fd -netdev user,id=n0 \

