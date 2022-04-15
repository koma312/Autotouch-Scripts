--[[

Define buttons:
type = CONTROLLER_TYPE.BUTTON
title = Button text
color = Button background color, it's optional, the default value is 0x428BCA
width = Button width upon percentage of the dialog width, it's optional, the default value is 0.5, max value is 1.0.
flag = Integer type of button flag for identifying which button is tapped.
collectInputs = Boolean type specifying wheather the dialog should collect the inputs while this button is tapped.

]]--



local label = {type=CONTROLLER_TYPE.LABEL, text="Quest Complete"}

local btn1 = {type=CONTROLLER_TYPE.BUTTON, title="Button 1", color=0x71C69E, width=0.8, flag=1, collectInputs=true}
local btn2 = {type=CONTROLLER_TYPE.BUTTON, title="Button 2", color=0xFF5733, flag=2, collectInputs=true}
local btn3 = {type=CONTROLLER_TYPE.BUTTON, title="Button 3", color=0xFFB7D0, width=1.0, flag=3, collectInputs=false}
local btn4 = {type=CONTROLLER_TYPE.BUTTON, title="Button 4", width=1.0, flag=4, collectInputs=true}

local controls = {label, btn1, btn2}

-- Pop up the dialog. After popping, the script will suspend waiting for user input until any button is tapped
-- then returns the flag of tapped button.

local orientations = { ORIENTATION_TYPE.LANDSCAPE_LEFT, ORIENTATION_TYPE.LANDSCAPE_RIGHT }
local result = dialog(controls, orientations)

if (result == 1) then
toast('good', 2) 
else
    alert(string.format("Dialog returned: %s", result))
end









































