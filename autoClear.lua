function clearChamps()

while true do

	repeater = 0

	xi = 0
	yi = 0
	xx = 643
	yy = 607

	::iterate_y::

	if xi >= 10 then break end
	if yi >= 44 then goto iterate_x end
	
		myColor = getColor(xx, yy)

	if myColor <= 16200000 and myColor >= 15000000 then

	repeat tap(xx, yy) usleep(2e6) until getColor(xx, yy) <= 15200000 
	toast('All Clear?', 2) usleep(5e5) break

else 
		repeater = repeater+1
		yi=yi+1
		yy=yy+3
end

	goto iterate_y

	::iterate_x::

		yi = 0
		xi = xi+1
		xx = xx+1 
		yy = 607
		
	goto iterate_y
end
	usleep(2e6) 
end

clearChamps()






































