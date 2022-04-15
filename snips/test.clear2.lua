while true do

	repeater = 0

	xi = 0
	yi = 0
	xx = 630
	yy = 580
	
	::iterate_y::

	if xi >= 10 then stop() end
	if yi >= 44 then goto iterate_x end
	
		myColor = getColor(xx, yy)

	if myColor <= 16200000 and myColor >= 15000000 then toast('Found', 4) stop() else 
	
		repeater = repeater+1
		yi=yi+1
		yy=yy+3

	end

	goto iterate_y

	::iterate_x::

		yi = 0
		xi = xi+1
		xx = xx+1 
		yy = 580
		
	goto iterate_y
end

















