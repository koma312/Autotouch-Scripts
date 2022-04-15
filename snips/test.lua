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

function noEnergy()
	--if #noenergyRes > 0 then tap(1577, 440) usleep(1e6) end
	if #mainResult == 0 then repeat usleep(1e6) until #mainResult > 0 usleep(1e6) end
	if #buyResult > 0 then tap(1358, 54) usleep(1e6) 
	repeat usleep(1e6) payResult = findColors(payColors, 2, payRegion) until #payResult > 0 usleep(1e6) end
	if #payResult > 0 then usleep(1e6) tap(1223, 1020) usleep(2e6) end
	nrg = nrg + 100 
	refillsx = refillsx - 1
end

function play1()
	repeat usleep(5e5) until getColor(454, 1008) == 16777215 or getColor(797, 1006) == 16777215 usleep(5e5)
	usleep(1e6) tap(465, 1060) usleep(2e6) noEnergy() usleep(1e6) 

	repeat usleep(5e5) until getColor(1861, 1448) == 6807648 usleep(5e5) tap(1877, 1437) usleep(5e5) 

	repeat usleep(5e5) until getColor(1861, 1448) == 6807648 or getColor(454, 1008) == 16777215 or getColor(797, 1006) == 16777215

	if getColor(1861, 1448) == 6807648 then usleep(5e5) tap(1877, 1437) usleep(5e5)
		repeat usleep(5e5) until getColor(454, 1008) == 16777215 or getColor(797, 1006) == 16777215 usleep(5e5)
		elseif getColor(454, 1008) == 16777215 or getColor(797, 1006) == 16777215 then usleep(5e5) 
	end
end

function play2()
	repeat usleep(5e5) until getColor(454, 1008) == 16777215 or getColor(797, 1006) == 16777215 usleep(5e5)
	usleep(1e6) tap(465, 1060) usleep(2e6) usleep(1e6) 

	repeat usleep(5e5) until getColor(1861, 1448) == 6807648 usleep(5e5) tap(1877, 1437) usleep(5e5) 

	repeat usleep(5e5) until getColor(1861, 1448) == 6807648 or getColor(454, 1008) == 16777215 or getColor(797, 1006) == 16777215

	if getColor(1861, 1448) == 6807648 then usleep(5e5) tap(1877, 1437) usleep(5e5)
		repeat usleep(5e5) until getColor(454, 1008) == 16777215 or getColor(797, 1006) == 16777215 usleep(5e5)
		elseif getColor(454, 1008) == 16777215 or getColor(797, 1006) == 16777215 then usleep(5e5) 
	end
end



label = {type=CONTROLLER_TYPE.LABEL, text='How much energy do you have?'}
refill = {type=CONTROLLER_TYPE.SWITCH, title="Refill Energy?", key="rf", value=0}
refills = {type=CONTROLLER_TYPE.PICKER, title="Refills:", key="ref", value="1", options={"1", "2", "3", "4"} }
energy = {type=CONTROLLER_TYPE.INPUT, title="Energy:", key="nrg", value="100"}

	btn1 = {type=CONTROLLER_TYPE.BUTTON, title="Start Events", color=0x71C69E, width=0.65, flag=1, collectInputs=true}
	btn3 = {type=CONTROLLER_TYPE.BUTTON, title="Exit", color=0xFF5733, width=0.35, flag=3, collectInputs=false}

	controls = {label, refill, energy, refills, btn1, btn3}

	orientations = { ORIENTATION_TYPE.LANDSCAPE_LEFT, ORIENTATION_TYPE.LANDSCAPE_RIGHT }
	result = dialog(controls, orientations)

energyMax = energy.value

if result == 3 then stop() end

if result == 1 then 


refillsx = tonumber(string.format("%d", refills.value))
refill = tonumber(string.format("%d", refill.value))
--nrg = tonumber(string.format('%i', energy.value))
nrg = tonumber(energyMax)
--stats = (string.format('Energy: %d/%d', nrg, energyMax))
--stats2 = (string.format('Energy: %d/%d, Refills: %d', nrg, energyMax, refillsx))
if refill==0 then refillsx=0 end

repeat

 		if refillsx ~= 0 then usleep(1e6) nrg=nrg-10 toast(nrg, 10) play1()
			

		elseif refillsx == 0 then

			if nrg <= 9 then usleep(1e6) stop()
			else usleep(1e6) nrg=nrg-10 toast(nrg, 10) play2()
			end
		end
until refillsx == 0 and nrg <= 9
end






	





















