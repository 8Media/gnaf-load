#!/bin/bash

#update apt
sudo apt update

#Add 6G Virtual memory to VPS

#Ignore if memory already exist
if [ ! -e "/swap_memory" ]; then
    #Server Config Names
    sudo fallocate -l 6G /swap_memory
    sudo chmod 600 /swap_memory
    sudo mkswap /swap_memory
    sudo swapon /swap_memory

    #Backup fstab incase something goes wrong
    sudo cp /etc/fstab /etc/fstab.bak
    echo '/swap_memory none swap sw 0 0' | sudo tee -a /etc/fstab

    #Tuning your Swap Settings
    sudo sysctl vm.swappiness=10
    echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf

    #Adjusting the Cache Pressure Setting
    sudo sysctl vm.vfs_cache_pressure=50
    echo 'vm.vfs_cache_pressure=50' | sudo tee -a /etc/sysctl.conf

    #Display memory
    free -h

    echo "######################################"
    echo "#### Virtual Memory Add Completed ####"
    echo "######################################"
else
    echo ""
    echo "############# Virtual memory already exist #################"
    echo ""
fi


read -p "Enter a strong Password for MySQL root user: " password

#Default MySQL database name
mysql_db_name="gnaf"

##MySQL##
sudo apt install -y mysql-server

#Set initial password
sudo mysql --user="root" --password="" --execute="ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '${password}';"

#create DB
sudo mysql --user="root" --password="${password}" --execute="CREATE DATABASE ${mysql_db_name};"

