
	colors = {{5805828,0,0}, {7118388,-5,6}, {7118388,5,6}, {8760908,5,-5}, {8760908,-5,-5}, {15922923,6,-6}, {13885886,-6,-6}, {12506023,-6,7}, {14411469,6,7}}

	region = {560, 490, 260, 380}

	--result = findColors(colors, 3, nil)

repeat

	result = findColors(colors, 3, nil)

	usleep(50000)

until(#result > 0)

for i, v in pairs(result) do

    alert(string.format("Found rect at: x:%f, y:%f", v[1], v[2]))

end



   --{5805828,0,0}, {7118388,-5,6}, {7118388,5,6}, {8760908,5,-5}, {8760908,-5,-5}, {15922923,6,-6}, {13885886,-6,-6}, {12506023,-6,7}, {14411469,6,7}
    

--560, 490, 260, 380}



































































