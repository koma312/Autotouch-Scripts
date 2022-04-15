function tap(x, y) touchDown(0, x, y) usleep(4e4) touchUp(0, x, y) usleep(4e4) end 

count = 1
maxCount = 20
tempCount = 1

--myColor = getColor(1160, 1440) --3223600 	--getColor(1160, 1440) == 15269591, 7768437, 15204055

function noAuto()

	if getColor(1160, 1440) >> 8000000 then log(getColor(1160, 1440)) 
	repeat tap(1160, 1440) usleep(5e5) until getColor(1160, 1440) << 8000000 log(getColor(1160, 1440))
	end
end

function oneRound()
	
	--if tempCount == 1 then toast(string.format('Round = %d of %d', tempCount, maxCount))
	--elseif tempcount >= 2 then

	toast(string.format('Round = %d of %d', count, maxCount))

	repeat usleep(2e5) until 
	getColor(1772, 826) == 16777215 or
	getColor(1781, 974) == 16777215 or
	getColor(1787, 1095) == 16777215

	usleep(1e6) tap(1766, 844) usleep(1e6) --enable autofight
	repeat usleep(3e5) until getColor(1035, 1206) == 154624 and getColor(1296, 1259) == 154624 --find fightscreen
	toast('fight screen found', 5) usleep(1e6) noAuto() usleep(1e6) --disable autofight

	-- Select champ 1

	--usleep(5e5) tap(138, 491)

	-- Select champ 2

	--tap(137, 715)

	-- Select champ 3

	tap(142, 942)

	-- Select champ 4

	-- Select champ 5

	usleep(1e6) tap(1820, 1420) usleep(1e6) tap(1820, 1420) usleep(4e6) --begin fight
	repeat usleep(5e5) tap(352, 258) --tap screen until return to map
	until getColor(1772, 826) == 16777215 or getColor(1781, 974) == 16777215 or getColor(1787, 1095) == 16777215 usleep(1e6)
	
	count = count+1

	if tempCount <= 1 then
	count = 1
	end

	tempCount = 2
end

repeat oneRound() until count >= maxCount
alert(string.format('END - limit: %d/%d', count, maxCount))
stop()


























