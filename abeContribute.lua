function reformatInt(i) return tostring(i):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "") end

label = {type=CONTROLLER_TYPE.LABEL, text='Donation:'}
donate = {type=CONTROLLER_TYPE.PICKER, title='Donation Amount:', key='ti', value="10", options={"10", "15", "20", "25"}}
xx = {type=CONTROLLER_TYPE.PICKER, title='Times to Donate:', key='mu', value="10x", options={"2x", "5x", "10x", "20x"}}
speed = {type=CONTROLLER_TYPE.PICKER, title='Speed:', key='sp', value="2e4", options={"1e4", "2e4", "3e4", "4e4"}}

	btn1 = {type=CONTROLLER_TYPE.BUTTON, title="Donate", color=0x71C69E, width=0.65, flag=1, collectInputs=true}
	btn3 = {type=CONTROLLER_TYPE.BUTTON, title="Exit", color=0xFF5733, width=0.35, flag=3, collectInputs=true}
	btn4 = {type=CONTROLLER_TYPE.BUTTON, title="Donate", color=0x71C69E, width=0.65, flag=4, collectInputs=true}
	btn5 = {type=CONTROLLER_TYPE.BUTTON, title="Exit", color=0xFF5733, width=0.35, flag=5, collectInputs=true}

	controls = {label, donate, xx, speed, btn1, btn3}
	controls2 = {label, donate, xx, speed, btn4, btn5}
	orientations = { ORIENTATION_TYPE.LANDSCAPE_LEFT, ORIENTATION_TYPE.LANDSCAPE_RIGHT }
	result = dialog(controls, orientations)

	donate = donate.value
	xx = xx.value:gsub("x", "")
	total = tonumber(string.format("%d", donate*xx))
	xp = tonumber(string.format("%d", (total*100)/20))
	price = reformatInt(tonumber(string.format("%d", total*100)))
	stats = (string.format('Cost: ◉%s, xp: %d', price, xp))

if result == 3 then stop() end
if result == 1 then toast(stats, 10) usleep(2e6) result = dialog(controls2, orientations) end
if result == 5 then stop() end
if result == 4 then 

	for i=total,1,-1 do
	tap(1770, 660)
	usleep(speed.value)
	end
end



