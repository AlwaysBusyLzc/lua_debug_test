
# 安装工具
# sudo apt update
# sudo apt-get install -y build-essential gcc g++ gdb valgrind make cmake git ninja-build python3 python3-pip nodejs zip rsync curl wget net-tools openssh-server
# sudo rm -rf /var/lib/apt/lists/*

# 下载 编译 lua5.4
# cd ~
# wget http://www.lua.org/ftp/lua-5.4.4.tar.gz
# tar -zxvf lua-5.4.4.tar.gz
# cd lua-5.4.4/
# make install INSTALL_TOP=~/lua_release


# 下载编译 luasocket
# wget https://codeload.github.com/lunarmodules/luasocket/zip/refs/tags/v3.1.0
# mv v3.1.0 lua-socket-v3.1.0
# mv lua-socket-v3.1.0 lua-socket-v3.1.0.zip
# unzip lua-socket-v3.1.0.zip
# cd luasocket-3.1.0/
# # 可能需要修改 src/makefile 目录下lua版本
# make PLAT=linux DEBUG=DEBUG LUAINC_linux_base=~/lua_release/include LUAPREFIX_linux=~/lua_release
# make install INSTALL_TOP=~/luasocket_release


# 上面的命令在 bash 执行，下面才是 编译脚本内容

#g++ main.cpp -I./lua/include -L./lua/lib -llua -o main
g++ main.cpp -I./lua/include -L./lua/lib -llua -Wl,-E -o main

