counter = 0

repeat
    counter = counter+1
    usleep(1e5)
until 
	counter >= 10

-- ——————————— --

counter = 1

if getColor(1, 1534) == 3223343 and getColor(32, 1439) == 9463611 then usleep(1e6) else repeat
	toast(counter, 1) usleep(1e6) counter = counter+1
	until counter >= 4 or getColor(1, 1534) == 3223343 and getColor(32, 1439) == 9463611
end















































