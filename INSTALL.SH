#!/bin/bash

# @2fx0one
# 本工具希望能完成我个人开发环境中 mac 和 linux 环境的整合。
# 包括：
# VIM 配置
# 常用命令的 alias
# Mac 常用软件

if [ $# -ne 1 ]
then
    echo "命令行参数个数为： $#"
    echo "Usage: $0 [mac/linux]"
    exit -1;
fi

work_dir=$(cd `dirname $0`;pwd)

#dot_files=("bash_profile" "vimrc")
intall_vimrc() {
    ln vimrc ${HOME}/.vimrc
}

intall_bash_profile() {
    mark_str='###INSTALL_BASH_PROFILE_MARK###'

    bash_profile="${HOME}/.bash_profile"

    #if [ -f ${bash_profile} ]
    #then
        # 查找文件存在
        # 查找文件是否存在安装标记
    #fi
    echo "search the mark string"
    grep "${mark_str}" $bash_profile
    if [ $? -eq 0 ] #Not Find or not exist
    then
        echo "FOUND ${mark_str}"
    else
        echo "Add String \"source ${work_dir}/bash_profile\" >> ${HOME}/.bash_profile ${mark_str}"
        echo "source ${work_dir}/bash_profile ${mark_str}" >> ${HOME}/.bash_profile
    fi


}

intall_bash_profile


