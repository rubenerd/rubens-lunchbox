#!/bin/tcsh 

set origin = 'your_cloud_or_vps_vendor'
set plan = 'your_instance_plan_name'
set contact = 'your_email'

pkg update
pkg install -y curl dpkg expat fio ioping traceroute wget
rehash

mount -t fdescfs fdesc /dev/fd
echo 'Because bash is a special snowflake' >> /etc/fstab
echo 'fdesc /dev/fd fdescfs rw 0 0' >> /etc/fstab

curl -OL https://raw.github.com/Crowd9/Benchmark/master/sb.sh
sudo bash sb.sh "${origin}" "${plan}" "${contact}" private