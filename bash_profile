export JAVA_6_HOME=/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_7_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home
export JAVA_8_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home
export JAVA_9_HOME=/Library/Java/JavaVirtualMachines/jdk-9.jdk/Contents/Home

alias jdk6="export JAVA_HOME=$JAVA_6_HOME"
alias jdk7="export JAVA_HOME=$JAVA_7_HOME"
alias jdk8="export JAVA_HOME=$JAVA_8_HOME"
alias jdk9="export JAVA_HOME=$JAVA_9_HOME"

export JAVA_HOME=`/usr/libexec/java_home`  #最后安装的版本，这样当自动更新时，始终指向最新版本


#jdk7 #tomcat catalina.sh 需要1.7

#export PYENV_ROOT="$HOME/.pyenv"
#export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
alias o="open ."
alias ll="ls -la"
alias wl='ll | wc -l'
alias l='ls -l'
alias lh='ls -lh'
alias grep='grep -i --color' #用颜色标识，更醒目；忽略大小写
alias vi=vim
alias c='clear'  # 快速清屏
alias p='pwd'

# 进入目录并列出文件
cdl() { cd "$@" && pwd ; ls -al; }

alias ..="cdl .."
alias ...="cd ../.."   # 快速进入上上层目录
alias .3="cd ../../.."
alias cd..='cdl ..'
alias h='history'

alias killport='function _killport(){ lsof -n -i4TCP:$@ | grep LISTEN | awk "{print \$2}" | xargs kill};_killport'
alias port='function _findport(){ lsof -n -i4TCP:$@ | grep LISTEN};_findport'
alias ports='netstat -tulan'

alias subl='/Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text -n'

export LC_ALL="en_US.UTF-8"
export PATH="$PATH:/usr/local/sbin"
export PATH="$PATH:/opt/devkitpro/portlibs/switch/bin"

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export DEVKITPRO=/opt/devkitpro
export DEVKITARM=/opt/devkitpro/devkitARM
export DEVKITPPC=/opt/devkitpro/devkitPPC
#export http_proxy=http://localhost:1087
#export https_proxy=http://localhost:1087
