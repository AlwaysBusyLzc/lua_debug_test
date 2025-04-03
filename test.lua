print(package.cpath)
package.cpath = package.cpath .. ";./lua/lib/luasocket/?.so"
print(package.cpath)

print("当前Lua版本:", _VERSION)

local socket = require "socket"

require("LuaPanda").start("127.0.0.1",8818)

print("hello i am lua")

function add(a, b)
    return a + b
end

local ret = add(1, 2)
print(ret)


-- function test_luasocket()
--     local client = socket.tcp()
--     client:close()
-- end

-- test_luasocket()