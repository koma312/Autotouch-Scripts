--[[
mainColors= {{12595200,0,0}, {12595200,55,0}, {12595200,80,60}}
mainRegion = {588.49, 832.25, 145.85, 99.95}
mainResult = findColors(mainColors, 3, mainRegion)

noenergyCol = {{16777215,0,0}, {16777215, 855, 77}}
noenergyReg = {495.62, 658.57, 945.42, 218.52}
noenergyRes = findColors(noenergyCol, 2, noenergyReg)

buyColors = {{6398560, 0, 0}, {6807648, 19, 37}}
buyRegion = {1391.04, 85.69, -61.96, -63.77}
buyResult = findColors(buyColors, 2, buyRegion)

payColors = {{3891770, 0, 0}, {3760183, 146, 0}, {16777215, 94, 30}}
payRegion = {1136.77, 1030.09, 157.84, 53.12}
payResult = findColors(payColors, 2, payRegion)

getColor(637, 903) == 12595200 and getColor(683, 866) == 12595200

--]]

function noEnergy()
	repeat usleep(5e5) until getColor(637, 903) == 12595200 and getColor(683, 866) == 12595200 usleep(1e6)
	tap(1358, 54) usleep(2e6)
	tap(1227, 1018) usleep(1e6) 
	--repeat usleep(5e5) until getColor(637, 903) == 12595200 and getColor(683, 866) == 12595200 usleep(1e6)
end

function play()
	repeat usleep(5e5) until getColor(637, 903) == 12595200 and getColor(683, 866) == 12595200 usleep(1e6)
	tap(465, 1060) usleep(3e6) 

	repeat usleep(5e5) until getColor(1861, 1448) == 6807648 usleep(5e5) tap(1877, 1437) usleep(5e5) 

	repeat usleep(5e5) until getColor(1861, 1448) == 6807648 or getColor(454, 1008) == 16777215 or getColor(797, 1006) == 16777215

	if getColor(1861, 1448) == 6807648 then usleep(5e5) tap(1877, 1437) usleep(5e5)
		repeat usleep(5e5) until getColor(480, 1160) == 9998981 and getColor(820, 1160) == 9998981 usleep(5e5)
		elseif getColor(637, 903) == 12595200 and getColor(683, 866) == 12595200 then usleep(5e5) 
	end
end

function quick()

	repeat usleep(5e5) until getColor(637, 903) == 12595200 and getColor(683, 866) == 12595200 usleep(1e6)

	if getColor(920, 1080) >= 8800000 and getColor(920, 1080) <= 10000000 then usleep(5e5) else

	tap(830, 1030) usleep(5e5) repeat usleep(5e5) until 
	getColor(1370, 1070) == 14538445 and getColor(675, 460) == 14538445 and
	getColor(675, 1070) == 14538445 and getColor(1370, 460) == 14538445
	usleep(1e6) tap(1024, 1076) usleep(5e5) nrg=nrg-10
end
end
	

label = {type=CONTROLLER_TYPE.LABEL, text='How much energy do you have?'}
refill = {type=CONTROLLER_TYPE.SWITCH, title="Refill Energy?", key="rf", value=0}
refills = {type=CONTROLLER_TYPE.PICKER, title="Refills:", key="ref", value="1", options={"1", "2", "3", "4"} }
energy = {type=CONTROLLER_TYPE.INPUT, title="Energy:", key="nrg", value="100"}

	btn1 = {type=CONTROLLER_TYPE.BUTTON, title="Play!", color=0x71C69E, width=0.60, flag=1, collectInputs=true}
	btn2 = {type=CONTROLLER_TYPE.BUTTON, title="Quick", color=blue, width=0.60, flag=2, collectInputs=true}
	btn3 = {type=CONTROLLER_TYPE.BUTTON, title="Exit", color=0xFF5733, width=0.20, flag=3, collectInputs=false}

	controls = {label, refill, energy, refills, btn1, btn2, btn3}
	orientations = { ORIENTATION_TYPE.LANDSCAPE_LEFT, ORIENTATION_TYPE.LANDSCAPE_RIGHT }

::startx::
--energy = {value='nil'}

	result = dialog(controls, orientations)

--energyMax = energy.value

refillsx = tonumber(string.format("%d", refills.value))
--refill = tonumber(string.format("%d", refill.value))
--refill = refill.value
nrg = tonumber(string.format("%d", energy.value))
--nrg = energy.value




if result == 3 then stop() end
if result == 1 then goto playx end
if result == 2 then goto quickx end

::playx::

	if refill.value==0 then refillsx=0 end

repeat

 		if refillsx ~= 0 then

			if nrg <= 9 then usleep(1e6) noEnergy() nrg = nrg + 100 refillsx = refillsx - 1
			else usleep(5e5) toast(string.format('Energy: %d, Refills: %d', nrg, refillsx)) play() nrg=nrg-10

			end

		elseif refillsx == 0 then

			if nrg <= 9 then usleep(1e6) stop()
			else usleep(5e5) toast(string.format('Energy: %d, Refills: %d', nrg, refillsx)) play() nrg=nrg-10
			end
		end
	until refillsx == 0 and nrg <= 9 stop()



::quickx::

	if refill.value==0 then refillsx=0 end

repeat

 		if refillsx ~= 0 then

			if nrg <= 9 then usleep(1e6) noEnergy() nrg = nrg + 100 refillsx = refillsx - 1
			else usleep(5e5) toast(string.format('Energy: %d, Refills: %d', nrg, refillsx)) quick() 
			end

		elseif refillsx == 0 then

			if nrg <= 9 then usleep(1e6) stop()
			else usleep(5e5) toast(string.format('Energy: %d, Refills: %d', nrg, refillsx)) quick()
			end
		end

until 

	getColor(637, 903) == 12595200 and getColor(683, 866) == 12595200 and 
	getColor(920, 1080) >= 8800000 and getColor(920, 1080) <= 10000000

usleep(1e6) 

if nrg >= 10 then goto startx end






















