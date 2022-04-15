local r = findImage ( "/images/help.png" ,1, 0.7, nil, nil); 
local n = 0;

if r == nil then alert ( "nil" ); else 
	for i, v in pairs (r) do n = n + 1; 
	end
end

if n == 0 then alert ( "false" ); 
else alert ( "true" );
end