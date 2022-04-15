usleep(2e6) 

firstTime = 1

function scrollRight()

	xx=1740 
	yy=750

	touchDown(8, xx, yy) usleep(3e4) for i=1,14,1 do touchMove(8, xx, yy) xx = xx-100 usleep(3e4) end touchUp(8, xx, yy)
end


function clearOne()

	if getColor(271, 1217) == 1912888 or getColor(245, 1072) == 11908279 then usleep(2e5)
	elseif getColor(430, 1175) == 16777215 then tap(72, 249) usleep(3e6)
	else repeat usleep(1e6) until getColor(1070, 1517) == 4826447 usleep(5e5) tap(1074, 1389)
	end

	repeat usleep(1e6) until getColor(271, 1217) == 1912888 or getColor(245, 1072) == 11908279 usleep(1e6) tap(309, 699)

	repeat usleep(1e6) until getColor(430, 1175) == 16777215 usleep(1e6) 

	if firstTime >= 0 then scrollRight() usleep(4e5) scrollRight() usleep(4e5) scrollRight() usleep(1e6) firstTime=0 end usleep(2e6) 

	tap(1779, 1142) usleep(3e6) tap(1024, 1081) usleep(3e6) tap(1779, 1142) usleep(3e6) tap(1024, 1081) usleep(3e6) 

	tap(72, 249) usleep(2e6) 
end

repeat clearOne() usleep(1e6) until getColor(178, 777) == 16777215

tap(1977, 249)
stop()


























































































