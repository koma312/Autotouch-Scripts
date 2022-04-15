
-- function champHelp()

local imagePath = "images/help.png"
local region = {610, 500, 105, 240}
local result = findImage(imagePath, 1, 0.9, nil, region)
for i, v in pairs(result) do
        local x = v[1]
        local y = v[2]
    log(string.format("Found rect at: x:%f, y:%f", x, y))
    tap(x, y)
    usleep(16000)
end
-- end

-- repeat champHelp()


























































