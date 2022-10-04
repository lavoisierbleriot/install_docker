#!/bin/bash
# Author: Lavoisier Bleriot
# Creation Date: 08/30/22
# Last Modified Date:
# Script Description: This script give information of my system.
# Script Usage: 

top
function system_name(){
    echo ""
        echo "My operation system is:"
    echo ""
        uname
    echo ""
}

function Hostname(){
    echo ""
       echo "The hostname is:"
    echo ""
        hostname
    echo ""

}

function Cpu_info(){
    echo ""
        echo "The CPU model is:"
    echo ""
       cat /proc/cpuinfo | grep "model name"
    echo ""
}

function Memory_Info(){
    echo ""
       echo "The memory info is:"
       cat /proc/meminfo | grep -i memtotal
    echo ""
}
system_name
Hostname
cpu_info
memory_info