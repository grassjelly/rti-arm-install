#!/usr/bin/env bash

echo "Have you copied RTI software with arm libraries?"
echo "https://community.rti.com/content/forum-topic/howto-run-rti-connext-dds-raspberry-pi (NO.4)"
echo "PRESS [ENTER] TO CONTINUE"
read

#Install Java8
sudo apt-get install -y software-properties-common
sudo apt-get install -y python-software-properties
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer

echo "export JREHOME=/usr/lib/jvm/java-8-oracle" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=$HOME/rti_connext_dds-5.2.3/lib/armv6vfphLinux3.xgcc4.7.2:$LD_LIBRARY_PATH" >> ~/.bashrc
echo "source $HOME/rti_connext_dds-5.2.3/resource/scripts/rtisetenv_armv6vfphLinux3.xgcc4.7.2.bash" >> ~/.bashrc
echo "alias rti=\"$HOME/rti_connext_dds-5.2.3/resource/scripts/rtisetenv_x64Linux3gcc4.8.2.bash" >> ~/.bashrc
