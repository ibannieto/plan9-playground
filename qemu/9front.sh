#!/bin/sh

## INSTALL CDROM MODE
# qemu-system-x86_64 -cpu host -smp $(nproc) -enable-kvm -m 2048 \
# -net nic,model=virtio,macaddr=52:54:00:00:EE:03 -net user \
# -device virtio-scsi-pci,id=scsi \
# -drive if=none,id=vd0,file=9front.qcow2.img \
# -device scsi-hd,drive=vd0 \
# -drive if=none,id=vd1,file=9front.iso \
# -device scsi-cd,drive=vd1,bootindex=0 \
# -vga std \
# -k es

## BOOT DISK MODE
qemu-system-x86_64 -cpu host -smp $(nproc) -enable-kvm -m 40969fron \
-net nic,model=virtio,macaddr=52:54:00:00:EE:03 -net user\
,hostfwd=tcp::5640-:564\
,hostfwd=tcp::17019-:17019\
,hostfwd=tcp::5670-:567\
,hostfwd=tcp::17020-:17020 \
-device virtio-scsi-pci,id=scsi \
-drive if=none,id=vd0,file=9front.qcow2.img \
-device scsi-hd,drive=vd0 \
-vga std \
-k es
