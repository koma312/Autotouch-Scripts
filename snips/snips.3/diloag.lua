
btn1 = {type=CONTROLLER_TYPE.BUTTON, title="Button 1", color=0x71C69E, width=0.8, flag=1, collectInputs=true}
btn2 = {type=CONTROLLER_TYPE.BUTTON, title="Button 1", color=0x71C69E, width=0.8, flag=2, collectInputs=true}
picker = {type=CONTROLLER_TYPE.PICKER, title="Pick a number!", key="", value="", options={"1","2","3","4"}}

--choice = {type=CONTROLLER_TYPE.PICKER, title="Pick a number!", key="", value="", options={"1","2","3","4"}}

dialogCtrls = {btn1}
dialog(dialogCtrls, false)

--Feel free to change the title and the options. You can provide a default option by putting that option within the quotes 
--for value (e.g. value="1").

--Underneath that, to access the choice, append ".value" to the variable name. As an example:


if btn1.value == "1" then
alert('button one', 3)


end



--[[
local btn1 = {type=CONTROLLER_TYPE.BUTTON, title="Button 1", color=0x71C69E, width=0.8, flag=1, collectInputs=true}
local btn2 = {type=CONTROLLER_TYPE.BUTTON, title="Button 2", color=0xFF5733, flag=2, collectInputs=true}
local btn3 = {type=CONTROLLER_TYPE.BUTTON, title="Button 3", color=0xFFB7D0, width=1.0, flag=3, collectInputs=false}
local btn4 = {type=CONTROLLER_TYPE.BUTTON, title="Button 4", width=1.0, flag=4, collectInputs=true}

local controls = {label, btn1, btn2}


--]]































