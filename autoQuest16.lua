function tap(x, y) touchDown(0, x, y) usleep(4e4) touchUp(0, x, y) usleep(4e4) end 
--champ = {type=CONTROLLER_TYPE.PICKER, title='', key='fchamp', value="Auto", options={"Auto", "Slot_1", "Slot_2", "Slot_3", "Slot_4", "Slot_5"} }

	input = { type=CONTROLLER_TYPE.INPUT, title='', key="Name", value="Champ Slot:" }

	--label = {type=CONTROLLER_TYPE.LABEL, text='Champion Slot:'}
	--switch = { type=CONTROLLER_TYPE.SWITCH, title="Champion Slot:", key="sw", value=0 }

	bca = {type=CONTROLLER_TYPE.BUTTON, title="Auto", color=0x71C69E, width=0.8, flag=100, collectInputs=true}
	bc1 = {type=CONTROLLER_TYPE.BUTTON, title="Champ_1", color=red, width=0.8, flag=1, collectInputs=true}
	bc2 = {type=CONTROLLER_TYPE.BUTTON, title="Champ_2", color=red, width=0.8, flag=2, collectInputs=true}
	bc3 = {type=CONTROLLER_TYPE.BUTTON, title="Champ_3", color=red, width=0.8, flag=3, collectInputs=true}
	bc4 = {type=CONTROLLER_TYPE.BUTTON, title="Champ_4", color=red, width=0.8, flag=4, collectInputs=true}
	bc5 = {type=CONTROLLER_TYPE.BUTTON, title="Champ_5", color=red, width=0.8, flag=5, collectInputs=true}
	btx = {type=CONTROLLER_TYPE.BUTTON, title="Exit", color=0xFF5733, width=0.3, flag=6, collectInputs=false}

	controls = {input, bca, bc1, bc2, bc3, bc4, bc5, btx}

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
    usleep(1e6) tap(1741, 943) usleep(35e4)
    repeat usleep(3e5) until getColor(135, 288) == 3223862 and getColor(72, 244) == 3223862 usleep(3e5) 
end

function auto()

	loops = 0

	if getColor(1770, 1110) >> 8000000 then repeat tap(1820, 1080) usleep(75e4) loops=loops+1 
	until getColor(1770, 1110) << 2800000 or loops >=3
	end

	if getColor(1770, 1110) >> 8000000 then usleep(1e6) repeat tap(1820, 1080) usleep(2e6) loops=loops+1
	until getColor(1770, 1110) << 2800000 or loops >=6
	elseif getColor(1770, 1110) << 2800000 then goto isOff
	else goto isOff
end 
	::isOff::

	loops=0
end

function beginFight()

	if getColor(1815, 1074) <= 2480000 and getColor(1815, 1074) >= 1640000 then for i=1,8,1 do usleep(5e5) tap(1820, 1420)
	end end
end


function doCombat()
    repeat usleep(1e6) tap(352, 258) until 
    getColor(1928, 1262)==11316911 and getColor(1968, 1302)==2304044 and getColor(1887, 1223)==2304044 usleep(2e6) 
end

if result==6 then stop() end
if result==100 then champ = {value='Auto'} goto runx end
if result==1 then champ = {value='Slot_1'} goto runx end
if result==2 then champ = {value='Slot_2'} goto runx end
if result==3 then champ = {value='Slot_3'} goto runx end
if result==4 then champ = {value='Slot_4'} goto runx end
if result==5 then champ = {value='Slot_5'} goto runx end

	::runx::

while true do
        
        if getColor(1910, 1288) == 2304044 and getColor(1925, 1272) == 11316911 
        then onMap() auto() champSlot() beginFight() doCombat()

        elseif getColor(88, 271) == 12961223 and getColor(77, 282) == 3223862 and getColor(1770, 1110) << 2800000
        then champSlot() beginFight() doCombat()

        elseif getColor(88, 271) == 12961223 and getColor(1770, 1110) >> 2800000 
        then auto() champSlot() beginFight() doCombat()
                
		 else doCombat()
		 end
end
