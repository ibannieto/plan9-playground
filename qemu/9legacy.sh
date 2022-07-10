#!/bin/sh

# curl -L http://9legacy.org/download/9legacy.iso.bz2 -o 9legacy.iso.bz2
# bunzip2 9legacy.iso.bz2
# stat 9legacy.iso

# qemu-img create -f qcow2 9front.qcow2.img 8G
# qemu-img create -f qcow2 9legacy.qcow2.img 8G

## INSTALL CDROM MODE
# qemu-system-x86_64 -enable-kvm -cpu host -smp $(nproc) -net nic,model=virtio,macaddr=52:54:00:00:EE:03 -net user\
# ,hostfwd=tcp::5640-:564\
# ,hostfwd=tcp::17019-:17019\
# ,hostfwd=tcp::5670-:567\
# ,hostfwd=tcp::17020-:17020 \
# -cdrom 9legacy.iso -hda 9legacy.qcow2.img -boot d -vga std -m 2G

## BOOT DISK MODE
qemu-system-x86_64 -enable-kvm -cpu host -smp $(nproc) -net nic,model=virtio,macaddr=52:54:00:00:EE:03 -net user\
,hostfwd=tcp::5640-:564\
,hostfwd=tcp::17019-:17019\
,hostfwd=tcp::5670-:567\
,hostfwd=tcp::17020-:17020 \
-hda 9legacy.qcow2.img -boot c -vga std -m 2G
