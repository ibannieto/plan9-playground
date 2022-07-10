# plan9-playground

Running Plan 9 on qemu

## Directories

- docs: plan9 documentation
- glenda: preconfigured scripts for the default glenda user
- qemu: qemu scripts preconfigured for plan9
- scripts: plan9 scripts/commands
- src: plan9 programs in c language

## How to

Open the scripts located in scripts/ directory in order to boot from a ISO or from local disk, default is local disk.

### 9front

Running 9front:

```shell
cd qemu
./9front.sh
```

### 9legacy

Running 9legacy:

```shell
cd qemu
./9legacy.sh
```

### Configure system to be a cpu server

TO BE DONE

### Connecting from Linux

You must use the [drawterm 9front fork](https://drawterm.9front.org/) in order to connect to Plan 9 (9front only) console from your system:

```shell
drawterm/drawterm -h 'tcp!127.0.0.1!17019' -u glenda -a 'tcp!127.0.0.1!5640'
```

Also text-mode only:

```shell
drawterm/drawterm -G -h 'tcp!127.0.0.1!17019' -u glenda -a 'tcp!127.0.0.1!5640'
```

NOTE that if you are using another Plan 9 distro you must use [another version](https://9p.io/wiki/plan9/drawterm_to_your_terminal/index.html) of drawterm, which is different that the 9front (authentication mechanism p9sk1 is changed/improved in 9front, 9legacy uses original auth AFAIK)

## Author

2022 - Iban Nieto
