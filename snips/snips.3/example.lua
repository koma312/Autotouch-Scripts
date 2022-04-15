local imagePath = "images/image.png"
local region = {610, 500, 105, 240}
local result = findImage(imagePath, 1, 0.9, nil, region)

for i, v in pairs(result) do
	local x = v[1]
	local y = v[2]
	tap(x, y)
	usleep(3e4)
end







