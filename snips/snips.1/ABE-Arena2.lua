tap(1395, 1195) usleep(2e6) 

repeat usleep(1e6) tap(2010, 1495) until getColor(1343, 1194) == 16777215 and getColor(1936, 408) == 6833699 or getColor(255, 1231) == 6833699


--[[

function checkTap()
if getColor(1981, 1466) == 8412698 or getColor(1861, 1448) == 6807648 then
usleep(1e6) tap(2010, 1495) 
end
end

repeat usleep(1e6) checkTap() until getColor(1981, 1466) ~= 8412698 or getColor(1861, 1448) ~= 6807648





repeat tap(2010, 1495) until getColor(1981, 1466) ~= 8412698 or getColor(1861, 1448) ~= 6807648 or 


repeat usleep(5e5) until getColor(1981, 1466) == 8412698 usleep(5e5) 
repeat usleep(1e6) tap(1981, 1466) until getColor(1852, 1450) == 8412698 usleep(5e5) 


for i=2,1,-1 do

repeat usleep(5e5) until getColor(1858, 1449) == 6807648 usleep(5e5) 
tap(1861, 1450) usleep(1e6)
end

--]]































































