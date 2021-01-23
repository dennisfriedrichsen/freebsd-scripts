#! /bin/sh

#mount from mercury (TrueNAS)
mount -t nfs mercury.local:/mnt/tank/files /mnt/files
mount -t nfs mercury.local:/mnt/tank/files-local /mnt/files-local
mount -t nfs mercury.local:/mnt/tank/files-photos /mnt/files-photos

#mount from cadmium (Seagate NAS)
#mount -t nfs cadmium.local:/shares/files /mnt/files-old
