#!/bin/sh
set -e
#set -x

echo VMware Unlocker 3.0
echo ===============================
echo Copyright: Dave Parsons 2011-18
echo Powered by sysin.org

# Ensure we only use unmodified commands
export PATH=/bin:/sbin:/usr/bin:/usr/sbin

echo Installing unlocker.tgz


# 调用ESXI中的/BootModuleConfig.sh来加载unlocker.tgz文件
BootModuleConfig.sh --verbose --add=unlocker.tgz
echo Success - please now restart the server!
