	champ = {type=CONTROLLER_TYPE.PICKER, title='', key='slot', value="Auto", 
	options={"Slot_1", "Slot_2", "Slot_3", "Slot_4", "Slot_5", "Auto"}}

	doReplay = { type=CONTROLLER_TYPE.SWITCH, title="Replay?", key="rp", value=1 }
	isRift = { type=CONTROLLER_TYPE.SWITCH, title="Is Rift?", key="rs", value=1 }

	btn = {type=CONTROLLER_TYPE.BUTTON, title="Start", color=0x71C69E, width=0.72, flag=1, collectInputs=true}
	btx = {type=CONTROLLER_TYPE.BUTTON, title="Exit", color=0xFF5733, width=0.34, flag=6, collectInputs=false}

	controls = {champ, riftSwitch, doReplay, btn, btx}

	orientations = { ORIENTATION_TYPE.LANDSCAPE_LEFT, ORIENTATION_TYPE.LANDSCAPE_RIGHT }
	result = dialog(controls, orientations)
 
function champSlot()

    if champ.value == 'Auto' then usleep(1e5) 
    elseif champ.value == 'Slot_1' and getColor(180, 588) >= 16000000 then champ = {value='Auto'}
    elseif champ.value == 'Slot_1' and getColor(180, 588) <= 16000000 then tap(138, 491)
    elseif champ.value == 'Slot_2' and getColor(181, 817) >= 16000000 then champ = {value='Auto'}
    elseif champ.value == 'Slot_2' and getColor(181, 817) <= 16000000 then tap(186, 798)
    elseif champ.value == 'Slot_3' and getColor(186, 1031) >= 16000000 then champ = {value='Auto'}
    elseif champ.value == 'Slot_3' and getColor(186, 1031) <= 16000000 then tap(186, 1031)
    elseif champ.value == 'Slot_4' and getColor(181, 1272) >= 16000000 then champ = {value='Auto'}
    elseif champ.value == 'Slot_4' and getColor(181, 1272) <= 16000000 then tap(186, 1266)
    elseif champ.value == 'Slot_5' and getColor(181, 1500) >= 16000000 then champ = {value='Auto'}
    elseif champ.value == 'Slot_5' and getColor(181, 1500) <= 16000000 then tap(186, 1500)
    end usleep(5e5) 
end

function onMap()

    usleep(3e5) tap(1741, 943) 
    repeat usleep(3e5) until getColor(135, 288) == 3223862 and getColor(72, 244) == 3223862
end

function autoPlay()
	for i=1,10,1 do tap(1430, 340) usleep(3e5) end usleep(1e6) tap(1871, 1087) 
end

--[[
	loops = 0

	if getColor(1770, 1110) >> 8000000 then repeat tap(1820, 1080) usleep(75e4) loops=loops+1 
	until getColor(1770, 1110) << 3400000 or loops >=3
	end

	log(getColor(1770, 1110))

	if getColor(1770, 1110) << 3400000 then toast(getColor(1770, 1110)) log(getColor(1770, 1110)) usleep(2e6) 
	goto isOff end

	toast(string.format('Loops = %d', loops))

	if getColor(1770, 1110) >> 8000000 then toast('Trying again', 5) usleep(5e5) repeat tap(1820, 1080) usleep(2e6) loops=loops+1
	until getColor(1770, 1110) << 3400000 or loops >=5
	else toast('There should be NO logical conditions allowing this message to ever be seen:[Line 57', 10) usleep(2e6)
	end

	if getColor(1770, 1110) << 3400000 then toast('2nd Attempt Success: Auto is OFF', 3) usleep(5e5) goto isOff
	else toast(string.format('Loops = %d', loops)) usleep(2e6) 
	end

	::isOff::
	loops=0
end
--]]

function beginFight()

	if getColor(1815, 1074) <= 2480000 and getColor(1815, 1074) >= 1640000 then for i=1,8,1 do tap(1820, 1420) usleep(5e5) end
	end
end

function doCombat()

	repeat usleep(1e6) tap(352, 258) until
	getColor(1060, 1194) == 281346 and getColor(1060, 1211) == 149504 or
	getColor(1928, 1262)==11316911 and getColor(1968, 1302)==2304044 and getColor(1887, 1223)==2304044
end

function rift()

	if getColor(1910, 1288) == 2304044 and getColor(1925, 1272) == 11316911 then
	tap(1377, 509) usleep(1e6)
	end

	repeat usleep(3e5) until getColor(135, 288) == 3223862 and getColor(72, 244) == 3223862 usleep(5e5) 
	champSlot() beginFight() doCombat()

	usleep(2e6) tap(1741, 943) 

	repeat usleep(5e5) until getColor(1101, 907) == 4103391 usleep(1e6) tap(1018, 1173)

 	repeat usleep(5e5) until getColor(664, 900) == 4103391 and getColor(1398, 1225) == 3223600 usleep(1e6) 

	tap(1697, 1222) usleep(5e5) tap(1697, 1222) usleep(5e5) tap(1697, 1222) usleep(5e5) 

	toast('Rift specific actions complete', 3)
end




if result==6 then stop() end

if result==1 then goto runx end


--[[
if result==1 then champ = {value='Slot_1'} goto runx end
if result==2 then champ = {value='Slot_2'} goto runx end
if result==3 then champ = {value='Slot_3'} goto runx end
if result==4 then champ = {value='Slot_4'} goto runx end
if result==5 then champ = {value='Slot_5'} goto runx end
--]]



	::runx::

runOnce = 0
if riftSwitchvalue == 1 then runOnce = 1 end
--if replayRift.value == 1 then doReplay = {value=1} end

while true do usleep(5e5) 

	if doReplay.value == 0 then goto noReplay end
	if doReplay.value == 1 then
	
	if getColor(1028, 1072) == 3223343 and getColor(1012, 1019) == 1843494 then 
	toast('Success', 8) usleep(8e6) tap(1052, 1181) usleep(1e6) 
	repeat usleep(3e5) until getColor(135, 288) == 3223862 and getColor(72, 244) == 3223862 usleep(1e6)
	runOnce = 1
	end
end

	::noReplay::

	if runOnce == 1 then rift() runOnce = 0
	else goto noRift
	end

	::noRift::

		if getColor(88, 271) == 12961223 and getColor(1770, 1110) >> 8000000 
		then autoPlay() champSlot() beginFight() doCombat()

		elseif getColor(88, 271) == 12961223 and getColor(77, 282) == 3223862 and getColor(1770, 1110) << 3400000
		then champSlot() beginFight() doCombat()

		elseif getColor(1910, 1288) == 2304044 and getColor(1925, 1272) == 11316911
		then onMap() autoPlay() champSlot() beginFight() doCombat()

		else doCombat()
		end

		usleep(5e5) 
end
