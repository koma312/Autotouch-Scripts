imagePath = "images/help.png"
region = {610, 500, 120, 240}
--local result = findImage(imagePath, 3, 0.9, region, true)


function fuck()
local result = findImage(imagePath, 3, 0.9, region, true)
for i, v in pairs(result) do
         xx = v[1]
         yy = v[2]
toast(yy)
usleep(3e6)

toast("table:  " .. tostring({result}))
usleep(2e6) 
end
end

repeat fuck() until xx == nil



--if x ~= nil --getColor(x, y) = 6199556
--then repeat usleep(3e6) fuck() 
--until x == nil
--end


--[[
if myColor == 6199556 then
do fuck() usleep(1e6) end
until myColor == nil
end




alert("table:  " .. tostring({result}))
--]]

usleep(1e6)

alert('continue script')










































