function champHelp()
	local imagePath = "images/help.png" local region = {610, 500, 105, 240} 
	local result = findImage(imagePath, 1, 0.9, nil, region)
	repeat for i, v in pairs(result) do local x = v[1] local y = v[2] 
	tap(x, y) usleep(1e6) end until x or y == nil 
end

champHelp()

usleep(5e5) 
toast('all done', 8)































