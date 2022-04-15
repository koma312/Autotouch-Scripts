local endScriptSwitch = {type=CONTROLLER_TYPE.SWITCH, title="End Script?", key="endScriptSwitch", value=0}
local controls = {endScriptSwitch}
enableRemember = false

function popup()

dialog(controls, enableRemember)

if endScriptSwitch.value == 1 then

    count = (count - count) + 1
end
end



count=1

while count <= 200 do

if count==5 or count==10 or count==15 or count==20 then popup() end

--if getColor(1205, 566) ~= 16777215 then popup() end

toast(string.format('Count:%d', count)) usleep(2e6) count=count+1
end

::endscript::



















































