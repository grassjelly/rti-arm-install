#!/usr/bin/env bash

echo "Have you copied RTI software with arm libraries?"
echo "https://community.rti.com/content/forum-topic/howto-run-rti-connext-dds-raspberry-pi (NO.4)"
echo "PRESS [ENTER] TO CONTINUE"
read

sudo apt-get install -y oracle-java8-installer

echo "export JREHOME=/usr/lib/jvm/java-8-oracle" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=/home/ubuntu/rti_connext_dds-5.2.3/lib/armv6vfphLinux3.xgcc4.7.2:$LD_LIBRARY_PATH" >> ~/.bashrc
echo "source /home/ubuntu/rti_connext_dds-5.2.3/resource/scripts/rtisetenv_armv6vfphLinux3.xgcc4.7.2.bash" >> ~/.bashrc
