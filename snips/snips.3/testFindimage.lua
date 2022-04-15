imagePath = "images/help.png"
result = findImage(imagePath, 1, 0.7, region, true)
region = {610, 500, 120, 240}

for i, v in pairs(result) do

		xx = v[1]
		yy = v[2]
end

if xx ~= nil then repeat tap(xx-43, yy) usleep(2e6) until 
		getColor(xx-19, yy) ~= 16185842 or 
		getColor(xx-21, yy) ~= 16185842 or 
		getColor(xx-23, yy) ~= 16185842
	else toast('nil', 1) usleep(1e6)
toast('fin', 1)
usleep(1e6)
end






























