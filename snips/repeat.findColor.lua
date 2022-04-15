repeat

	locations = findColor(0xF6F9F2, 2, nil)

	usleep(50000)

until(#locations > 0)

	for i, v in pairs(locations) do

	alert(string.format("Found pixel: x:%f, y:%f", v[1], v[2]))

end




