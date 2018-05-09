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

echoMsg() {
    green='\e[0;32m' # '\e[1;32m' is too bright for white bg.
    endColor='\e[0m'

    # Display welcome message
    #echo -e "${green}Welcome \e[5;32;47m $USER \n${endColor}"
    arg_color="$1"
    arg_msg="$2"
    # 30=black 31=red 32=green 33=yellow 34=blue 35=magenta 36=cyan 37=white
    # for color in ("black" "red" "green" "yellow" "blue" "magenta" "cyan" "white")
    #do
    #    if [ "${arg_color}"x == "$color"x ]
    #    then
    #    	echo "${arg_color}"
    #        
    #    fi

    #done
}

#dot_files=("bash_profile" "vimrc")
install_vimrc() {
    ln vimrc ${HOME}/.vimrc
}

install_dot_file() {
    arg_file=$1
    comment_symbol="$2"
    mark_str="${comment_symbol}###INSTALL_$(echo $arg_file | tr 'a-z' 'A-Z')_MARK###"

    source_dot_file="${work_dir}/${arg_file}"
    target_dot_file="${HOME}/.${arg_file}"

    #echo "$source_dot_file"
    #echo "$target_dot_file"

    #if [ -f ${bash_profile} ]
    #then
        # 查找文件存在
        # 查找文件是否存在安装标记
    #fi
    echo "search the mark string"
    grep "${mark_str}" $target_dot_file
    if [ $? -eq 0 ] #Not Find or not exist
    then
        echo "FOUND ${mark_str}"
        echo "Will NOT INSTALL!!!"
    else
        echo "Add String \"source ${source_dot_file}\" >> ${target_dot_file}"
        echo "source ${source_dot_file} ${mark_str}" >> ${target_dot_file}
    fi


}

install_dot_file 'bash_profile' '#'
install_dot_file 'vimrc' '"'


