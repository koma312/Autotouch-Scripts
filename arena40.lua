function clearChamps()

while true do

	xi = 0
	yi = 0
	xx = 638
	yy = 560

	::iterate_y::

	if xi >= 4 then break end
	if yi >= 80 then goto iterate_x end
	
		myColor = getColor(xx, yy)

	if myColor <= 16200000 and myColor >= 15000000 then
if myColor >= 15000000 then log(string.format('Color: %d at %d, %d', myColor, xx, yy)) end
	repeat toast('Clearing..', 2) tap(xx, yy) usleep(2e6) until getColor(xx, yy) <= 15200000 
	toast('All Clear?', 2) usleep(5e5) break

else 
		yi=yi+1
		yy=yy+3

		if myColor >= 15000000 then log(string.format('Color: %d at %d, %d', myColor, xx, yy)) end
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

count=0
countx=5

usleep(1e6) 

repeat

toast('Start Loop', 1)

if getColor(33, 1424) >= 9300000 and getColor(33, 1424) <= 11000000 then

	if countx-count==5 then clearChamps() usleep(1e6) end

	qf=16

	repeat tap(248, 1426) usleep(5e5) qf=qf-1 until getColor(1267, 1240) == 3223343 or qf==0 usleep(5e5) 

	if qf==0 then

		if getColor(350, 800) == 1513754 and getColor(400, 710) == 1513754 then alert('no champs') stop()
		else usleep(1e6) tap(1156, 1236) usleep(1e6)
		end
	end

	confirmTaps=16 

	repeat tap(1819, 1454) usleep(5e5) confirmTaps=confirmTaps-1 until confirmTaps==0 usleep(1e6)
end

	repeat toast('Combat', 2) tap(1200, 1245) usleep(1e6) tap(1327, 1449) usleep(1e6) until 
	getColor(33, 1424) >= 9300000 and getColor(33, 1424) <= 11000000

	count=count+1
	countx=countx+1
usleep(1e6)

toast('End Loop', 1)

until count >= 38

alert('count max') usleep(1e6) 
stop()



































