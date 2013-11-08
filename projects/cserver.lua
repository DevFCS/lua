local socket = require("socket")
local server = assert(socket.bind("*", 40000))
local ip, port = server:getsockname()
local client = {}
server:setoption("keepalive", true)
print("Server is starting you can connect to " .. ip ..":" .. port)
  client[#client+1] = server:accept()  
while true do
  --local line, err = client:receive()
  --print (line, err)
  --if line == "/stopserver" then break end
  --if line == "/quit" then client:close() end
  --if not err then client:send(line .. "\n") end
end
