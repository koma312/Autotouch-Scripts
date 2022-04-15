function OnEvent(event, arg)

	if (event == "MOUSE_BUTTON_PRESSED" and arg > 1 and not IsKeyLockOn("numlock")) then
		PressKey("numlock")
		Sleep(50)
		ReleaseKey("numlock")
	end
end

function OnEvent(event, arg)
	OutputLogMessage("event = %s, arg = %s\n", event, arg);
end


function OnEvent(event, arg)

	if IsKeyLockOn("numlock") then
		OutputLogMessage("event = %s, arg = %s\n", event, arg);
	end
end
