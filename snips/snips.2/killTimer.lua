usleep(5e5) 

killTimer = 60

if getColor(1, 1534) == 3223343 and getColor(32, 1439) == 9463611 then usleep(5e5) else 

	alert('FISSION MAILED - init killTimer(60)') 
	log('[arena17.lua] error23: Null Champion - killtimer initiated') 
	usleep(3e6)

	repeat toast(killTimer, 1) usleep(1e6) killTimer = killTimer-1 until

	killTimer <= 1 or 
	getColor(1, 1534) == 3223343 and getColor(32, 1439) == 9463611
end

if getColor(1, 1534) ~= 3223343 and getColor(32, 1439) ~= 9463611 then
	log('[arena17.lua] error23: goodbye world - killSwitch engaged')
	toast('killSwitch engaged, goodbye world') usleep(2e6)
	endScript() 
end

killTimer = 60
usleep(5e5) toast('SUCCESS - Continue with script', 3)




































