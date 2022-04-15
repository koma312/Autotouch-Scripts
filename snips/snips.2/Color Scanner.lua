repeater = 0
--while repeater >= 0 do

	xx = 630
	--yy = 585
	yy = 200
	yyy = yy+10

	--myColor1 = getColor(xx, yy)
	--myColor2 = getColor(xx, yyy)

while yy >= 1 do

	::againx::

	--if repeater >= 8 then goto blahx end

	if yy >= 1200 then goto blahx end

	myColor1 = getColor(xx, yy)
	myColor2 = getColor(xx, yyy)

	--if myColor1 <= 17000000 and myColor1 >= 1600000099 then goto clearx
	--elseif myColor2 <= 17000000 and myColor2 >= 1600000099 then goto clearz

	if myColor1 == 15400704 then goto clearx
	elseif myColor2 == 15400704 then goto clearz
	else 

		log(string.format('[%d]: (%d)color1=%d, (%d)color2=%d', repeater, yy, myColor1, yyy, myColor2))
		--toast(repeater) usleep(4e5) 
		--toast(string.format('(%dx) - y:%d [%d], y:%d [%d]', repeater, yy, myColor1, yyy, myColor2))
		usleep(3e4)
		--tap(xx, yy) usleep(5e5) tap(xx, yyy) usleep(5e5) 
		repeater = repeater+1 
		yy=yy+20 --44
		yyy=yy+10 --22
		goto againx
end

	::clearx::
	
	usleep(1e6) 
	alert(string.format('TRUE: Color1(%d) = %d', yy, myColor1))
	log(string.format('TRUE: Color1(%d) = %d', yy, myColor1))
	stop()

	::clearz::
	
	usleep(1e6) 
	alert(string.format('TRUE: Color2(%d) = %d', yyy, myColor2))
	log(string.format('TRUE: Color1(%d) = %d', yyy, myColor2))
	stop()

	::blahx::

	toast(string.format('(%dx) - y:%d [%d], y:%d [%d]', repeater, yy, myColor1, yyy, myColor2))
	usleep(1e6) 
	alert(string.format('FALSE: Color1(%d)= [%d] FALSE: Color2(%d)= [%d]', yy, myColor1, yyy, myColor2))
	log(string.format('FALSE: Color1(%d)= [%d] FALSE: Color2(%d)= [%d]', yy, myColor1, yyy, myColor2))
	stop()

end























