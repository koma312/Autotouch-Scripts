function tap(x, y)
	touchDown(2, x, y) usleep(2e4) touchUp(2, x, y) end

function clearChamps()
	if getColor(631, 621) == 16054514 then repeat usleep(2e6) tap(631, 621) until getColor(631, 621) ~= 16054514 
end end

clearChamps()

for i=4,1,-1 do
	usleep(5e5) touchDown(0, 714, 719)
	usleep(3e4) touchMove(0, 439, 729)
	usleep(3e4) touchUp(0, 493, 729)
	usleep(5e5) tap(271, 1430)
end
	repeat usleep(1e6) until getColor(218, 1079) == 1842722 tap(1400, 1050)
	for i=15,1,-1 do usleep(5e5) tap(1756, 1445) 
end

if getColor(1732, 1444) ~= 16777215 then repeat
	tap(1303, 1209) usleep(5e6)

until getColor(1732, 1444) == 16777215
	usleep(2e6)
	tap(1403, 1456)
	usleep(6e6)
end

clearChamps()
toast('[—————[ End of Script ]—————]', 4, 'center')
usleep(1e6)




























