label = {type=CONTROLLER_TYPE.LABEL, text="Quest Complete"}
nameInput = {type=CONTROLLER_TYPE.INPUT, title="Name:", key="Name", value="Bob"}

local btn1 = {type=CONTROLLER_TYPE.BUTTON, title="Continue", color=0x71C69E, flag=1, collectInputs=true}
local btn2 = {type=CONTROLLER_TYPE.BUTTON, title="Exit", color=0xFF5733, flag=2, collectInputs=true}

local controls = {label, btn1, btn2}

local orientations = { ORIENTATION_TYPE.LANDSCAPE_LEFT, ORIENTATION_TYPE.LANDSCAPE_RIGHT };

--dialog(controls, orientations)
local result = dialog(controls, orientations)


if result == 1 then toast(string.format("%s", flag.value)) end
if result == 2 then toast(string.format("%s", result.value)) end


usleep(2e6) 
toast(string.format("%s", result))















































