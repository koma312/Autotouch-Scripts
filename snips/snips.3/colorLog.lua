x = 200 -- set initial (x,y) values to your desired starting point
y = 800

repeat

--log(x, y)
	  log(string.format("x:%f, y:%f - %f", x, y, getColor(x, y)))
	--log(string.format("x:%f, y:%f", x, y) .. (getColor(x, y)))
	--log(getColor(x, y)) -- log color value at current position
	usleep(30000)
	x = x + 1 -- iterate x or y to suit your situation
	y = y + 0




until

	x >= 210 -- set x or y to some ending condition 


































