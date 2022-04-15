usleep(5e5) 

if getColor(1, 1534) ~= 3223343 and getColor(32, 1439) ~= 9463611 then usleep(1e6)
	alert('FISSION MAILED - init killTimer(60)') log('FISSION MAILED - [arena17.lua] error23: Null Champion') usleep(2e6)
end

killTimer = 1

if getColor(1, 1534) == 3223343 and getColor(32, 1439) == 9463611 then usleep(5e5) else repeat 

	toast(counter, 1) usleep(1e6) killTimer = killTimer+1 until
	killTimer >= 60 or 
	getColor(1, 1534) == 3223343 and getColor(32, 1439) == 9463611
end

if getColor(1, 1534) ~= 3223343 and getColor(32, 1439) ~= 9463611 then 
	endScript()
end

killTimer = 1
usleep(5e5) toast('SUCCESS - Continue with script', 3)






