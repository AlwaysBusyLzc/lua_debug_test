#include <iostream>
#include <string>
#include "lua.hpp"

using namespace std;

int main()
{
    cout << "hello lua" << endl;

    lua_State* L = luaL_newstate();
    luaL_openlibs(L);

    // 2. 加载并执行 Lua 文件
    if (luaL_dofile(L, "test.lua") != LUA_OK) {
        const char* err = lua_tostring(L, -1);
        std::cerr << "Lua 错误: " << err << std::endl;
        lua_pop(L, 1);
        return 1;
    }

    // 3. 关闭虚拟机
    lua_close(L);
    return 0;

}