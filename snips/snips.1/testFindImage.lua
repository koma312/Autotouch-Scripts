
-- function champHelp()

local imagePath = "images/sym.png"
local region = {758, 547, 131, 141}
local result = findImage(imagePath, 1, 0.7, region, true)
for i, v in pairs(result) do
        local x = v[1]
        local y = v[2]
    log(string.format("Found rect at: x:%f, y:%f", x, y))
    --tap(x, y)
    usleep(16000)
end
-- end

-- repeat champHelp()


























































