function filterScroll() 
	usleep(1e6) touchDown(2, 1804, 1300) usleep(3e4) touchMove(2, 1804, 1200) usleep(3e4) touchMove(2, 1804, 1100) 
	usleep(3e4) touchMove(2, 1804, 1000) usleep(3e4) touchMove(2, 1804, 900) usleep(3e4) touchUp(2, 1804, 870) usleep(1e6) 
end

function filterFour()
	usleep(1e6) tap(1934, 1393) usleep(1e6) tap(1761, 1442) filterScroll() tap(1761, 1442) usleep(1e6)
end

function symbiote()

symResult = findImage('images/sym.png', 1, 0.7, {758, 547, 131, 141}, true)

	if (symResult) ~= nil
	then toast('not found') usleep(4e6) 

    log(string.format("Found rect at: x:%f, y:%f", x, y));
end end

usleep(1e6) 
symbiote()
usleep(1e6) 
























