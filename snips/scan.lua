while true do

	repeater = 0

	xi = 0
	yi = 0
	xx = 629
	yy = 580
	
	::iteratey::

	if xi >= 15 then goto stopx end
	if yi >= 45 then goto iteratex end
	
		myColor = getColor(xx, yy)

	if myColor <= 17000000 and myColor >= 15000000 then goto clearx else

		repeater = repeater+1
		yi=yi+1
		yy=yy+11
	end

	goto iteratey

	::iteratex::
		yi = 0
		xi = xi+1
		xx = xx+1 
		yy = 580
		
	goto iteratey

	::clearx::
	
	usleep(5e5) 
	--log(string.format('[1/2] FOUND: color(%d, %d) = %d', xx, yy, myColor))
	goto clearChampions

	::stopx:: -- Continue to threeChamps()

	usleep(5e5) 
	log(string.format('[NOT FOUND] repeat:%d, xi:%d', repeater, xi))
	alert('[NOT FOUND]')
	stop()

	::clearChampions::  -- Continue to clearChamps()

	alert(string.format('[FOUND] x:%d (%d), y:%d (%s)', xi, xi+627, repeater, repeater/xi))
	log(string.format('[%d] FOUND: x:%d (%d), y:%d (%s)', yi, xi, xi+627, repeater, repeater/xi))
	stop()

end
















