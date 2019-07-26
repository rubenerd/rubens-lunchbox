#!/bin/sh

######
## OpenTSDB installer for blank OrionVM Debian VM
## 2014-08
## 2019: Long since outdated, should be replaced with Ansible/Saltstack/etc!

set -e

###############################################################################
## Set your hostname first

_HOSTNAME=$(hostname)
printf "127.0.0.1    $_HOSTNAME" >> /etc/hosts


###############################################################################
## Install packages

apt-get update
apt-get upgrade -y
apt-get install -y ant autoconf build-essential git gnuplot liblzo2-dev \
    openjdk-6-jdk python wget python


###############################################################################
## Install hbase

cd /tmp
rm -rf hbase*
_FILENAME=hbase-0.98.5-hadoop2-bin.tar.gz
wget http://apache.mirror.serversaustralia.com.au/hbase/stable/$_FILENAME
tar -zxf $_FILENAME
rm $_FILENAME
mv hbase-* /opt/hbase
cd /opt/hbase

mkdir -p /data

cat >conf/hbase-site.xml <<EOF
<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="configuration.xsl"?>
<configuration>
  <property>
    <name>hbase.rootdir</name>
    <value>file:///data/hbase</value>
  </property>
  <property>
    <name>hbase.zookeeper.property.dataDir</name>
    <value>/data/zookeeper</value>
  </property>
</configuration>
EOF

echo "export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk-amd64" >> conf/hbase-env.sh
echo "export HBASE_LOG_DIR=/var/log/hbase" >> conf/hbase-env.sh


###############################################################################
## Install LZO support to hbase

cd /tmp
git clone git://github.com/cloudera/hadoop-lzo.git
cd hadoop-lzo
hbasedir=/opt/hbase
. $hbasedir/conf/hbase-env.sh
CLASSPATH=$(pwd)/lib/hadoop-core-1.0.4.jar CFLAGS=-m64 CXXFLAGS=-m64 LDFLAGS='-Wl,--no-as-needed' ant compile-native tar
mkdir -p $hbasedir/lib/native
cp build/hadoop-lzo-0.4.14/hadoop-lzo-0.4.14.jar $hbasedir/lib
cp -a build/hadoop-lzo-0.4.14/lib/native/* $hbasedir/lib/native


###############################################################################
## init.d script

cat >/etc/init.d/hbase <<"EOF"
#!/bin/bash

### BEGIN INIT INFO
# Provides:             hbase
# Required-Start:       $syslog $network
# Required-Stop:        $syslog
# Default-Start:        2 3 4 5
# Default-Stop:         0 1 6
### END INIT INFO

NAME=hbase
DIR=/opt/hbase
PIDFILE=/tmp/hbase-root-master.pid

start() {
    "$DIR"/bin/start-hbase.sh
    RETVAL=$?
}

stop() {
    "$DIR"/bin/stop-hbase.sh
    RETVAL=$?
}

restart() {
    stop
    start
}

status() {
    if [ -f $PIDFILE ] && ps -p $(cat $PIDFILE) > /dev/null
    then
        echo "$NAME running with pid $(cat $PIDFILE)"
    else
        echo "$NAME" not running
    fi
}

case "$1" in
    start)
        start
        ;;
    stop)
        stop
        ;;
    status)
        status
        ;;
    restart)
        restart
        ;;
    *)
        echo "Usage: {start|stop|status|restart}"
        exit 1
        ;;
esac
exit $RETVAL
EOF


###############################################################################
## Enable and start service
## Don't know what would be in systemd, and don't care

chmod +x /etc/init.d/hbase
update-rc.d hbase defaults
/etc/init.d/hbase start


###############################################################################
## Build and install opentsdb

cd /tmp
git clone git://github.com/OpenTSDB/opentsdb.git
cd opentsdb
sh build.sh debian
dpkg -i build/opentsdb-2.0.0/opentsdb-2.0.0_all.deb


###############################################################################
## Basic configuration

echo "tsd.core.auto_create_metrics = true" >> /etc/opentsdb/opentsdb.conf
echo "tsd.core.timezone = Australia/Sydney" >> /etc/opentsdb/opentsdb.conf

env COMPRESSION=lzo HBASE_HOME=/opt/hbase ./src/create_table.sh
/etc/init.d/opentsdb start

