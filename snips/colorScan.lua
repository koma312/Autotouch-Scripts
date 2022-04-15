while true do

	repeater = 0

	xi = 0
	xx = 627
	yy = 482
	
	::iteratey::

	if xx >= 645 then goto stopx end
	if yy >= 792 then goto iteratex end
	
		myColor = getColor(xx, yy)

	if myColor <= 17000000 and myColor >= 15000000 then goto clearx 
	else --usleep(2e4)

		--log(string.format('%d: color(%d, %d) = %s', repeater, xx, yy, myColor))
		--toast(string.format('%d: color(%d, %d) = %s', repeater, xx, yy, myColor))
		repeater = repeater+1 
		yy=yy+20
end
		goto iteratey

	::iteratex::

		--log(string.format('xi:%d, xx:%d', xi, xx))
		xi = xi+1
		xx = xx+1 
		yy = 500
		
		goto iteratey

	::clearx::
	
	usleep(5e5) 
	log(string.format('[1/2] FOUND: color(%d, %d) = %d', xx, yy, myColor))
	goto clearChampions

	::stopx:: -- Continue to threeChamps()

	usleep(5e5) 
	log(string.format('[NOT FOUND] repeat:%d, xi:%d', repeater, xi))
	alert('[NOT FOUND]')
	stop()

	::clearChampions::  -- Continue to clearChamps()

	alert(string.format('[FOUND] x:%d (%d), y:%d (%f)', xi, xi+627, repeater, repeater/xi))
	log(string.format('[2/2] FOUND: x:%d (%d), y:%d (%f)', xi, xi+627, repeater, repeater/xi))
	stop()

end
















