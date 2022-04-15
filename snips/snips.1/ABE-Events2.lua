function tap(x, y) touchDown(0, x, y) usleep(4e4) touchUp(0, x, y) end usleep(4e4)

usleep(1e6)
counter = 1
myColor = getColor(796, 1060)

function errorCheck()

	if getColor(718, 375) == 12582912 and getColor(1317, 471) == 7536640 and getColor(1362, 409) == 10682368 then
	toast('Inventory Full', 6) usleep(1e6) tap(759, 988) usleep(2e6)
end

	if getColor(702, 778) == 7297872 and getColor(1336, 778) == 7297872 then toast('No Energy', 6) usleep(5e5) tap(1579, 441)
	repeat usleep(1e6) until
	getColor(933, 1008) == 16777215 usleep(5e5) tap(1359, 55) --tap green+
	repeat usleep(1e6) until
	getColor(1242, 566) == 16752423 and getColor(779, 603) == 15109923 usleep(1e6) tap(1222, 1021) usleep(1e6) --buy 100 energy
end
usleep(1e6)
end

function mainScreen()

	if myColor == 16777215 or myColor == 12566463 
	then usleep(1e6) toast('MainScreen Confirmed', 2) usleep(1e6)
	else repeat toast('Not on MainScreen - waiting for manual correction', 1) usleep(1e6) 
	until myColor == 16777215 or myColor == 12566463 usleep(1e6) toast('MainScreen Confirmed', 2) usleep(1e6)
end
end

function beginRound()

	if myColor == 16777215 then usleep(5e5) tap(796, 1060) usleep(1e6) 
	elseif myColor == 12566463 then usleep(5e5) tap(465, 1060) usleep(1e6) 
	else usleep(5e5) toast('Error', 4)
end
end

function quick()

	mainScreen()

	if myColor == 16777215 then usleep(5e5) tap(796, 1060) usleep(3e6) errorCheck() usleep(1e6) 
	end

	if myColor == 16777215 then usleep(5e5) tap(796, 1060) usleep(3e6)
	elseif getColor(1024, 1065) == 16777215 and getColor(1002, 514) == 16777215 then usleep(1e6)
	else toast('error', 4) log('error line48')
	end

	usleep(1e6) tap(1024, 1075) usleep(2e6)
end

function long()
	
	mainScreen()

	if myColor == 12566463 then usleep(5e5) tap(465, 1060) usleep(3e6) errorCheck() usleep(1e6) 
	end

	if myColor == 12566463 then usleep(5e5) tap(465, 1060) usleep(3e6)
	end

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

	repeat toast('Waiting for Main Screen', 1) usleep(1e6) until myColor == 16777215 or myColor == 12566463 usleep(1e6)

	if myColor == 16777215 then toast('Quick Event', 5)
	quick() usleep(1e6) end
		
	if myColor == 12566463 then toast('Play Event', 5)
	long() usleep(1e6) end

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










	




