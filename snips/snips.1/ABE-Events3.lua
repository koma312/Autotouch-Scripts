function tap(x, y) touchDown(0, x, y) usleep(4e4) touchUp(0, x, y) end usleep(4e4)

usleep(1e6)
counter = 1
myColor = getColor(796, 1060)

function errorCheck()

	if getColor(718, 375) == 12582912 and getColor(1317, 471) == 7536640 and getColor(1362, 409) == 10682368 
	then toast('Inventory Full', 4) usleep(1e6) tap(759, 988) usleep(2e6)
	elseif getColor(702, 778) == 7297872 and getColor(1336, 778) == 7297872 
	then toast('No Energy', 6) usleep(1e6) tap(1579, 441)
		repeat usleep(5e5) until
		getColor(933, 1008) == 16777215 usleep(1e6) tap(1359, 55) usleep(1e6)  --tap green+
		repeat usleep(5e5) until
		getColor(1242, 566) == 16752423 and getColor(779, 603) == 15109923 usleep(1e6) tap(1222, 1021) usleep(1e6) --buy 100 energy
	else toast('no errors')
	end
end

function mainScreen()

	if myColor == 16777215 or myColor == 12566463 
	then toast('MainScreen Confirmed', 1)
	else repeat toast('Not on MainScreen - waiting for manual correction', 1) usleep(1e6) 
	until myColor == 16777215 or myColor == 12566463 usleep(1e6) toast('MainScreen Confirmed', 2)
end
end

function quick()

	tap(796, 1060) usleep(3e6) errorCheck()

-- getColor(970, 1076) == 16777215 and getColor(1067, 1082) == 16777215 --Claim button is up

	if myColor == 16777215 then usleep(1e6) tap(796, 1060) usleep(2e6)  --tap again
end 
	tap(1024, 1075) usleep(2e6)
end

function long()
	
tap(465, 1060) usleep(3e6) errorCheck() usleep(5e5) 

	if myColor == 12566463 then usleep(1e6) tap(465, 1060) usleep(3e6) --tap again
	end

--[[
	if myColor == 12566463 then usleep(5e5) tap(465, 1060) usleep(3e6) errorCheck() usleep(1e6) 
	end

	if myColor == 12566463 then usleep(5e5) tap(465, 1060) usleep(3e6)
	end
--]]

	repeat usleep(5e5) until getColor(1982, 1466) == 8412698 --autoplay button found 

	if getColor(75, 1469) == 14226966 
	then repeat usleep(2e6) until getColor(75, 1469) ~= 14226966 and getColor(1861, 1448) == 6807648
	usleep(2e6) tap(1877, 1437) usleep(2e6)
	end

	usleep(3e6)

	if getColor(1861, 1448) == 6807648 then
	usleep(1e6) tap(1877, 1437) usleep(2e6)
	end
end


function oneRound()

	mainScreen()

	if myColor == 16777215 
then toast('Quick Event', 1) quick() usleep(1e6) 
		
	elseif myColor == 12566463 
then toast('Play Event', 1) long() usleep(1e6)

end
	counter = counter + 1
	toast(counter, 14) log(counter) usleep(1e6) 
end

function scriptStop()

result = getColors({
    {1049, 388},
    {1019, 388},
    {991, 381},
    {1020, 339} })

for i, v in pairs(result) do
	if v == 13695952 then doStop = true else doStop = false
end
end
end

repeat oneRound() scriptStop() until doStop == true and getColor(796, 1059) == 16777215
usleep(1e6) alert('End of Script') usleep(1e6) 
stop()










	




