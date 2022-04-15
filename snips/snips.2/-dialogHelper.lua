--[[
four types of dialog options:
	label - display text
	input - text input
	picker - multiple choices
	switch - toggle

dialog box #1 - 
	label: Please enter in the order that you want your dialogue's options to be displayed in.
			Use 'l' for label, 'i' for input, 'p' for picker, and 's' for switch (aka toggle).
			If you use anything but these four letters, the script will immediately be aborted.
	input: value=""

take input value and loop thru it, calling a function for each of the types.
function getLabel() -> 
show dialog box #2a
	input: text="Please enter in what you want your label to say:"

function getInput() ->
show dialog box #2b
	label: There are 3 parameters for input: title, key, and value.
      title - the prompt above the input box.
      key - unique single word representation of your title.
			value - text that auto-appears in the text box. Leave this blank for no text.
	3x inputs

function getPicker() ->
show dialog box #2c
	label: There are 4 parameters for picker: title, key, value, and options.
			title - the prompt above the picker.
			key - unique single word representation of your title.
			value - text that auto-appears in the box. Leave this blank for no text.
			options - a list of choices you want the user to have; seperate choices by commas (with no space inbetween the commas)
	4x inputs

function getSwitch() ->
show dialog box #2d
	label: There are 3 parameters for switch: title, key, and value.
			title - the prompt above the switch.
			key - unique single word representation of your title.
			value - the default value for the switch (0 or 1).
	2x inputs & 1 switch for default value
--]]



-- ##### Backend functions ##### --

function isItemInTable(i, t)
  for itemi,itemv in ipairs(t) do
    if i == itemv then 
      return true 
    end
  end
  return false
end

function isNeedleInHaystack(n, h)
  if type(n) == "table" then
    trues = 0
    for i,v in pairs(n) do
      result = isNeedleInHaystack(v,h)
      if result then trues = trues + 1 end
    end
    if trues == #n then
      return true
    else 
      return false
    end
  end
  
  if string.find(h,n) ~= nil then
    return true
  else
    return false
  end
end

function isStrInStr(n, h)
  return isNeedleInHaystack(n,h)
end

function isTableInTable(x, y)
  itemsIn = 0
  for _,v in pairs(x) do
    if isItemInTable(v,y) then
      itemsIn = itemsIn + 1
    end
  end
  if itemsIn == #y then 
    return true
  else 
    return false
  end
end

function isin(x,y)
  if isNum(x) then x = str(x) end
  if isStr(y) then
    return isNeedleInHaystack(x,y)
  elseif isStr(x) and isTable(y) then
    return isItemInTable(x,y)
  elseif isTable(x) and isTable(y) then
    return isTableInTable(x,y)
  else
    alert("I dont understand your inputs of: " .. x .. " and " .. y .. " for function isin(). Returning nil.")
    return nil
 end
end

function isStr(string)
  return type(string) == "string"
end

function isNum(number)
  return type(number) == "number"
end

function isTable(table)
  return type(table) == "table"
end

function tabl(input)
  output = {}
  if type(input) == "number" then
    input = str(input)
  end
  for i = 1, #input do
    output[i] = input:sub(i,i)
  end
  return output
end

-- ##### Dialog functions ##### --

function getLabel()
  local dbox2a_input = {type=CONTROLLER_TYPE.INPUT, title="Text for label:", key="ltxt", value=""}
  local dbox2a_ctrls = {dbox2a_input}
  dialog(dbox2a_ctrls, false)
  return dbox2a_input.value
end

function getInput()
  local dbox2b_label = {type=CONTROLLER_TYPE.LABEL, text="There are 3 required parameters for input: title, key, and value.\ntitle - the prompt above the input box.\nkey - unique single word representation of your title."}
  local dbox2b_title = {type=CONTROLLER_TYPE.INPUT, title="Title:", key="title2b", value=""}
  local dbox2b_key   = {type=CONTROLLER_TYPE.INPUT, title="Key:", key="key2b", value=""}
  local dbox2b_value = {type=CONTROLLER_TYPE.INPUT, title="Value:", key="value2b", value=""}
  local dbox2b_ctrls = {dbox2b_label,dbox2b_title,dbox2b_key,dbox2b_value}
  dialog(dbox2b_ctrls, false)
  if dbox2b_title.value == "" or dbox2b_key.value == "" or dbox2b_value.value == "" then
    error("All parameteres must be filled in. Aborting script")
  end
  return dbox2b_title.value, dbox2b_key.value, dbox2b_value.value
end

function getPicker()
  
  return p
end

function getSwitch()
  
  return s
end

function parseInput(inp)
  local results = ""
  if inp == 'l' then
    local ul = getLabel()
    results = "{type=CONTROLLER_TYPE.LABEL, text=\"" .. ul .. "\"}"
  elseif inp == 'i' then
    local i1,i2,i3 = getInput()
    results = "{type=CONTROLLER_TYPE.INPUT, title=\"" .. i1 .. "\", key=\"" .. i2 .. "\", value=\"" .. i3 .. "}"
  elseif inp == 'p' then
    local p1,p2,p3,p4 = getPicker()
    results = "{type=CONTROLLER_TYPE.INPUT, title=\"" .. p1 .. "\", key=\"" .. p2 .. "\", value=\"" .. p3 .. "}" --need to add 4th param
  elseif inp == 's' then
    local s1,s2,s3 =  getSwitch()
    results = "{type=CONTROLLER_TYPE.INPUT, title=\"" .. s1 .. "\", key=\"" .. s2 .. "\", value=\"" .. s3 .. "}"
  end
end

-- ##### Main ##### --
dbox1_label = {type=CONTROLLER_TYPE.LABEL, text="Please enter in the order that you want your dialogue's options to be displayed in;\nUse 'l' for label, 'i' for input, 'p' for picker, and 's' for switch (aka toggle);\nIf you use anything but these four letters, the script will immediately abort."}
dbox1_input = {type=CONTROLLER_TYPE.INPUT, title="Order of options:", key="ooo", value=""}
dbox1_ctrls = {[1]=dbox1_label, [2]=dbox1_input}

dialog(dbox1_ctrls, false)

abort = false

inpTable = tabl(dbox1_input.value)

userCtrls = {}
ucIndex = 1

for i,v in pairs(inpTable) do
  if not isin(v, "lips") then
    alert("Your input contained characters that were not 'l','i','p', or 's'. Aborting script.")
    error("Invalid input")
  end
  userCtrls[ucIndex] = parseInput(v)
  ucIndex = ucIndex + 1
end
--for final return value, turn userCtrls into a full string and copy it to the clipboard
-- then add an alert saying it's been copied to the clipboard



    
