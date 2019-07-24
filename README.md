## Ruben's Lunchbox

This is my random box of one-off scripts, config files, and notes. Many of these were imported from GitHub Gists and other places. Each file should be self-contained.


### Dedication

This repo is named for [Brandon's Lunchbox], a 1989 DOS game that was my first introduction to computers. Like this repo, it had a bunch of random little games that taught me things. Now this is doing the same thing.

    ┌──────────────────────────────────────┐
    │                                      │
    │            R U B E N E R D           │
    │                ╔════╗                │
    │        ╔═══════╩════╩═══════╗        │
    │        ║    R U B E N ’S    ║        │
    │        ║  L U N C H B O X   ║        │
    │        ║                    ║        │
    │        ╚════════════════════╝        │
    │      A B C D E F G H I J K L M       │
    │      N O P Q R S T U V W X Y Z       │
    │          ’+’ or Esc to quit          │
    │                                      │
    └──────────────────────────────────────┘

[Brandon's Lunchbox]: https://www.myabandonware.com/game/brandon-s-big-lunchbox-3x6#screentabs "MyAbandonwarePage Captures and Snapshots of Brandon's Lunchbox"


### Changelog

* [freebsd-virtualbox-guest.sh](./freebsd-virtualbox-guest.sh) `2019-03-13` Services for FreeBSD VirtualBox guests.
* [perlmagick-profile.sh](./perlmagick-profile.sh) `2019-03-11` Shell variables for using PerlMagick on macOS.
* [11.2-to-12-zpool-upgrade.log](./11.2-to-12-zpool-upgrade.log) `2019-01-11` Log of new features upgrading a zpool across FreeBSD 11.2 to 12.0-R.
* [entropy-spam.eml](./entropy-spam.eml) `2018-11-07` Most spectacular spam I've ever received, may use as an entropy source.
* [unix-to-date.sh](./unix-to-date.sh) `2018-10-13` Convert UNIX seconds time to standard date.
* [tourist-dollars-per-capita-2018.csv](./tourist-dollars-per-capita-2018.csv) `2018-09-29` Tourist dollars spent per capita in 2018, from HowMuch.net and Wikipedia.
* [fix-mojave-fonts.sh](./fix-mojave-fonts.sh) `2018-09-18` Fix the horrible new macOS Mojave font rendering settings
* [hugo-segfault.log](./hugo-segfault.log) `2018-09-17` When your blog is so big, it segfaults Hugo!
* [image-magick-mitigation.xml](./image-magick-mitigation.xml) `2018-09-11` ImageMagick PDF vulnerability mitigation.
* [virustotal-rubenerdcom.json](./virustotal-rubenerdcom.json) `2018-08-11` API output from running VirusTotal against my blog.
* [fave-char-bingo-order.pl](./fave-char-bingo-order.pl) `2018-07-27` My over-engineered shuffler for the Favourite Character Bingo meme.
* [apple-usbc-multiport-panic.log](./apple-usbc-multiport-panic.log) `2018-06-25` Apple's USB-C to Multiport adaptor for the 12-inch MacBook isn't great.
* [xenserver-find-vm-vnc-port.md](./xenserver-find-vm-vnc-port.md) `2018-06-25` How to find the VNC port for a specific VM on Xenserver; distinct from Xen.
* [load-ssh-agent.sh](./load-ssh-agent.sh) `2018-06-13` For ssh key passwords, and to fix forward-agent in macOS.
* [freebsd-zfs-file-server.sh](./freebsd-zfs-file-server.sh) `2018-06-13` Simplest FreeBSD ZFS RAIDZ2 file server
* [remove-key.bat](./remove-key.bat) `2018-06-06` Remove licence/product key from Windows
* [exists.sh](./exists.sh) `2018-06-02` Cross-platform command exists check (no bashisms)
* [qemu-nt351.sh](./qemu-nt351.sh) `2018-05-07` Windows NT 3.51 on QEMU.
* [homebrew-vmware-fusion.log](./homebrew-vmware-fusion.log) `2018-05-05` VMware Fusion aliases installed with Homebrew
* [mariadb-10.1-trusty.sh](./mariadb-10.1-trusty.sh) `2018-05-02` MariaDB 10.1 repo and server on Ubuntu Trusty
* [randomart-camel.txt](./randomart-camel.txt) `2018-04-24` Camel RSA randomart
* [brew-lo.log](./brew-lo.log) `2018-02-26` LibreOffice binaries, via Homebrew
* [debian-dmesg-ppc.log](./debian-dmesg-ppc.log) `2018-01-02` Debian dmesg on PowerPC 
* [FreeBSD.conf](./FreeBSD.conf) `2018-01-02` Override for latest pkg packages, instead of quarterly
* [xva-img-build-debian.sh](./xva-img-build-debian.sh) `2017-12-22` Build xva-img on Debian
* [resursive-ln.sh](./resursive-ln.sh) `2017-12-19` Recursively build directory of symlinks
* [multiuser-brew.sh](./multiuser-brew.sh) `2017-11-15` Multiuser Mac brew and brew cask
* [tidy-htm5-install-osx.sh](./tidy-htm5-install-osx.sh) `2017-10-11` Install tidy-htm5 on OS X
* [randomart-cowboy-boot.txt](./randomart-cowboy-boot.txt) `2017-10-11` Cowboy boot RSA randomart 
* [rescue-disk.sh](./rescue-disk.sh) `2017-10-11` Best-effort disk rescue using glorious ddrescue
* [freebsd-svn-git-deps.md](./freebsd-svn-git-deps.md) `2017-10-11` FreeBSD dependencies for svn, git
* [csr-sha512.sh](./csr-sha512.sh) `2017-10-07` Generate CSR with sha512
* [plex-debian.sh](./plex-debian.sh) `2017-09-26` Install Plex on Debian, using Deb Multimedia repo
* [fs-gzip.sh](./fs-gzip.sh) `2017-09-20` Export file system to gzip
* [memtest86-usb.sh](./memtest86-usb.sh) `2017-09-20` Quick USB bootable MemTest86 
* [trusty-sources.list](./trusty-sources.list) `2017-09-13` Ubuntu sources.list with mirrors.txt
* [download.ps1](./download.ps1) `2017-09-13` Download files with PowerShell
* [disable-network-manager-centos7.sh](./disable-network-manager-centos7.sh) `2017-09-12` Disable NetworkManager on CentOS 7
* [freebsd-zfs-file-server.sh](./freebsd-zfs-file-server.sh) `2017-09-06` Simplest FreeBSD ZFS RAIDZ2 file server
* [remove-key.bat](./remove-key.bat) `2017-09-06` Remove licence/product key from Windows
* [exists.sh](./exists.sh) `2017-09-06` Cross-platform command exists check (no bashisms)
* [homebrew-vmware-fusion.log](./homebrew-vmware-fusion.log) `2017-08-31` VMware Fusion aliases installed with Homebrew
* [mariadb-10.1-trusty.sh](./mariadb-10.1-trusty.sh) `2017-08-31` MariaDB 10.1 repo and server on Ubuntu Trusty
* [randomart-camel.txt](./randomart-camel.txt) `2017-08-29` Camel RSA randomart
* [brew-lo.log](./brew-lo.log) `2017-08-29` LibreOffice binaries, via Homebrew
* [debian-dmesg-ppc.log](./debian-dmesg-ppc.log) `2017-08-29` Debian dmesg on PowerPC 
* [FreeBSD.conf](./FreeBSD.conf) `2017-08-17` Override for latest pkg packages, instead of quarterly
* [xva-img-build-debian.sh](./xva-img-build-debian.sh) `2017-08-17` Build xva-img on Debian
* [resursive-ln.sh](./resursive-ln.sh) `2017-08-08` Recursively build directory of symlinks
* [multiuser-brew.sh](./multiuser-brew.sh) `2017-07-07` Multiuser Mac brew and brew cask
* [tidy-htm5-install-osx.sh](./tidy-htm5-install-osx.sh) `2017-06-13` Install tidy-htm5 on OS X
* [randomart-cowboy-boot.txt](./randomart-cowboy-boot.txt) `2017-06-13` Cowboy boot RSA randomart 
* [rescue-disk.sh](./rescue-disk.sh) `2017-06-05` Best-effort disk rescue using glorious ddrescue
* [freebsd-svn-git-deps.md](./freebsd-svn-git-deps.md) `2017-04-11` FreeBSD dependencies for svn, git
* [csr-sha512.sh](./csr-sha512.sh) `2017-04-07` Generate CSR with sha512
* [plex-debian.sh](./plex-debian.sh) `2017-03-07` Install Plex on Debian, using Deb Multimedia repo
* [fs-gzip.sh](./fs-gzip.sh) `2017-03-03` Export file system to gzip
* [memtest86-usb.sh](./memtest86-usb.sh) `2017-03-03` Quick USB bootable MemTest86 
* [trusty-sources.list](./trusty-sources.list) `2017-01-11` Ubuntu sources.list with mirrors.txt
* [download.ps1](./download.ps1) `2016-11-07` Download files with PowerShell
* [disable-network-manager-centos7.sh](./disable-network-manager-centos7.sh) `2016-09-24` Disable NetworkManager on CentOS 7
* [chrome-debian.sh](./chrome-debian.sh) `2016-09-24` All seeing eye (Chrome) install on Debian
* [freebsd-java.sh](./freebsd-java.sh) `2016-09-24` A basic FreeBSD Java sandbox
* [inline-gist-jekyll.html](./inline-gist-jekyll.html) `2016-09-24` Inline import of gists using Jekyll
* [basic-freebsd-bridge.sh](./basic-freebsd-bridge.sh) `2016-08-30` Basic HP MicroServer FreeBSD bridge with 4-port NIC
* [ubuntu-xen-44.sh](./ubuntu-xen-44.sh) `2016-08-05` Bootstrap Ubuntu Xen 4.4 Dom0
* [intstring.py](./intstring.py) `2016-04-25` Basic Python string to int, and back
* [sh-source-dest.sh](./sh-source-dest.sh) `2016-04-23` sh source command example
* [2011-fah.csv](./2011-fah.csv) `2016-03-17` Folding@Home progress in 2011
* [exe-sigs.log](./exe-sigs.log) `2016-03-16` Executable signatures using find
* [drbd-master-promote.sh](./drbd-master-promote.sh) `2016-03-09` Promote DRBD resource to master
* [vda-raw-convert.sh](./vda-raw-convert.sh) `2016-02-16` Convert VirtualPC/HyperV vhd to raw image
* [usb-bootable-sophos.sh](./usb-bootable-sophos.sh) `2016-02-16` Create bootable Sophos UTM key
* [whole-wheat-radio-playcount.csv](./whole-wheat-radio-playcount.csv) `2016-01-29` Whole Wheat Radio artist play count, before closing
* [nginx-devel-freebsd-ports.sh](./nginx-devel-freebsd-ports.sh) `2016-01-21` nginx-devel from FreeBSD ports
* [build_xva-img_debian.sh](./build_xva-img_debian.sh) `2016-01-17` Build xva-img on Debian
* [goodbye-github.md](./goodbye-github.md) `2015-12-23` Goodbye, GitHub.
* [vim-lite.log](./vim-lite.log) `2015-12-22` Last version of vim-lite in FreeBSD ports, before vim-console
* [femp.sh](./femp.sh) `2015-12-17` Basic FreeBSD FEMP webserver components
* [dcfldd-gzip-ssh.sh](./dcfldd-gzip-ssh.sh) `2015-09-18` Local to remote compressed gzip (dcfl)dd
* [xenmigrate.py](./xenmigrate.py) `2015-09-16` Jolokia Networks and Mark Pace's Xen migrate tool
* [simplest-ubuntu-desktop.sh](./simplest-ubuntu-desktop.sh) `2015-09-01` Simplest Ubuntu 14.04 LTS desktop
* [jekyll-debian.sh](./jekyll-debian.sh) `2015-08-31` Install deps for Jekyll on Debian
* [old-hard-drives.txt](./old-hard-drives.txt) `2015-08-29` Head, cylinder, sector count for old drives
* [less-utf8.sh](./less-utf8.sh) `2015-08-29` Enable utf-8 output in FreeBSD less
* [xfce-dropbox.sh](./xfce-dropbox.sh) `2015-08-29` Fix Dropbox on Xfce
* [freebsd-serverbear-deps.sh](./freebsd-serverbear-deps.sh) `2015-08-29` FreeBSD Serverbear dependencies
* [gpdr.md](./gpdr.md) `2015-08-29` "We've updated our privacy policy!"
* [virt-install-centos-xen.sh](./virt-install-centos-xen.sh) `2015-08-29` virt-install CentOS Xen
* [loader.conf](./loader.conf) `2015-08-29` My standard FreeBSD /boot/loader.conf
* [pkgsrc-macos.sh](./pkgsrc-macos.sh) `2015-08-29` Bootstrap pkgsrc on macOS
* [debian-fah.sh](./debian-fah.sh) `2015-08-29` Basic Debian FAH cloud instance
* [sysctl-noipv6.conf](./sysctl-noipv6.conf) `2015-08-29` Disable IPv6 in Debian/Ubuntu
* [sysctl.conf](./sysctl.conf) `2015-08-29` A slightly paranoid FreeBSD sysctl.conf
* [drbd-secondary-demote.sh](./drbd-secondary-demote.sh) `2015-08-29` Demote DRBD resource to secondary
* [rapidssl-g3-geotrust.pem](./rapidssl-g3-geotrust.pem) `2015-08-29` RapidSSL SHA256 CA - G3, GeoTrust Global certificate bundle
* [zip-to-tarxz.sh](./zip-to-tarxz.sh) `2015-08-29` Recompress zip to tar.xz
* [iperf-gen8-localhost.markdown](./iperf-gen8-localhost.markdown) `2015-08-29` iPerf on HP Microserver over localhost
* [lspci-hp-gen8-microserver.log](./lspci-hp-gen8-microserver.log) `2015-08-29` lspci for HP Gen 8 Microserver
* [packer-debian.sh](./packer-debian.sh) `2015-08-29` Install binary Packer on Debian
* [ssh-agent.sh](./ssh-agent.sh) `2015-08-29` Load ssh-agent
* [caf-to-flac.sh](./caf-to-flac.sh) `2015-08-29` iOS caf to flac, with preserved timestamps
* [gzip-img-to-dev.sh](./gzip-img-to-dev.sh) `2015-08-27` Export gzipped file system to device
* [wget-symlink.sh](./wget-symlink.sh) `2015-08-27` Protect oneself from wget's symlink attack
* [freebsd-www-ports.sh](./freebsd-www-ports.sh) `2015-08-17` Pull FreeBSD www ports tree for nginx
* [clear-hist.sh](./clear-hist.sh) `2015-08-17` Clear csh/tcsh command history
* [dvdrip-macos-pkgs.sh](./dvdrip-macos-pkgs.sh) `2015-08-17` Rip protected DVDs in macOS
* [qcow2-hvm.cfg](./qcow2-hvm.cfg) `2015-07-12` Using qcow2 images in Xen 4.1 on Debian
* [unixbench-freebsd.sh](./unixbench-freebsd.sh) `2015-07-12` Install unixbench on FreeBSD
* [watchguard-dmesg.log](./watchguard-dmesg.log) `2015-06-04` Watchguard dmesg
* [rtorrent](./rtorrent) `2015-06-04` rtorrent
* [ira-assign.markdown](./ira-assign.markdown) `2015-06-04` ISA IRQ assignments
* [minimum.awk](./minimum.awk) `2015-05-04` Minimum viable awk script file with arguments
* [dither.sh](./dither.sh) `2015-05-04` Dither PNGs to 256 colour
* [anchor-cms-freebsd.sh](./anchor-cms-freebsd.sh) `2015-04-30` Anchor CMS on FreeBSD
* [zpool-raid0-fail.log](./zpool-raid0-fail.log) `2015-04-27` What a failed zpool looks like!
* [raspian-desktop.sh](./raspian-desktop.sh) `2015-04-27` Install default Raspian desktop
* [vyos-grub-xen.sh](./vyos-grub-xen.sh) `2015-03-02` Tune VyOS grub for Xen
* [bsd-mac-address.sh](./bsd-mac-address.sh) `2015-02-10` Get MAC address of specified interface on BSD
* [ibmpc_1991-95.txt](./ibmpc_1991-95.txt) `2015-02-10` IBM PC model numbers, 1991-95
* [debian-serverbear.sh](./debian-serverbear.sh) `2015-01-29` Building Debian system for ServerBear tests
* [python-base64.py](./python-base64.py) `2015-01-24` Python base64 string encoding example
* [replace-folder-terms.sh](./replace-folder-terms.sh) `2015-01-24` Find and replace terms in folder of files
* [linux-serial-console.sh](./linux-serial-console.sh) `2015-01-07` Enable Linux serial console access for Xen, KVM
* [clear-freebsd.sh](./clear-freebsd.sh) `2015-01-07` Clear FreeBSD instance
* [vyos-for-vyatta.sh](./vyos-for-vyatta.sh) `2014-12-21` Install VyOS repo on Vyatta
* [randomart-vulture.txt](./randomart-vulture.txt) `2014-12-20` Vulture ECDSA randomart
* [zip-100-dmesg.log](./zip-100-dmesg.log) `2014-12-16` Iomega Zip 100MB USB OS X 10.11 dmesg
* [mirror.txt](./mirror.txt) `2014-12-02` Example Ubuntu mirror.txt
* [xl-disk-configuration.txt](./xl-disk-configuration.txt) `2014-12-01` Xen xl disk configuration
* [avconv-libfdk_aac.ssh](./avconv-libfdk_aac.ssh) `2014-11-27` Build avconv with libfdk_aac on Trusty
* [solaris-gen8-dmesg.log](./solaris-gen8-dmesg.log) `2014-11-20` Stock HP Gen8 MicroServer Solaris 11.3 dmesg 
* [freebsd-change-userid.sh](./freebsd-change-userid.sh) `2014-11-17` Change FreeBSD user ID
* [ci_xfs.sh](./ci_xfs.sh) `2014-11-08` Case insensitive XFS
* [adobe-cc-mac-uninstall.sh](./adobe-cc-mac-uninstall.sh) `2014-11-03` Remove Adobe Creative Cloud from OS X
* [commander-quantum-combadge.markdown](./commander-quantum-combadge.markdown) `2014-10-24` Commander-rank Quantum-universe combadge
* [bash-source-dest.sh](./bash-source-dest.sh) `2014-10-20` bash source command example, destination
* [freebsd-10.0R-10.1R.sh](./freebsd-10.0R-10.1R.sh) `2014-10-20` FreeBSD 10.0-RELEASE to 10.1-RELEASE
* [server.xml](./server.xml) `2014-10-20` Atlassian Confluence server config for HTTPS nginx proxy
* [bash-source-origin.sh](./bash-source-origin.sh) `2014-10-20` bash source command example, origin
* [emm386.markdown](./emm386.markdown) `2014-10-20` Versions of EMM386
* [serial-baud-rates.md](./serial-baud-rates.md) `2014-10-17` Standard serial baud rates
* [zpool-raid1-nas-create.sh](./zpool-raid1-nas-create.sh) `2014-10-17` NAS ZFS raid1 (mirror) pool creation
* [first.pl](./first.pl) `2014-10-17` My first Perl script, from school in 2004


### Licence

Licenced under the 3-Clause BSD Licence with the no endorsement clause, which I think is perfectly reasonable. See [LICENSE.md](./LICENSE.md) for details, including the American spelling for licence.

