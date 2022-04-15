while true do

usleep(1e6) 

repeat usleep(1e6) toast('searching', 1) until
		(getColor(1060, 1194) == 281346 and getColor(1060, 1211) == 149504) or
		(getColor(1928, 1262)==11316911 and getColor(1968, 1302)==2304044 and getColor(1887, 1223)==2304044)

if getColor(1060, 1194) == 281346 and getColor(1060, 1211) == 149504 
	then toast('REPLAY SCREEN', 1)
elseif (getColor(1928, 1262)==11316911 and getColor(1968, 1302)==2304044 and getColor(1887, 1223)==2304044)
	then toast('FOUND MAP', 1)
end
end


































