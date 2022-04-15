--local state = appState("com.kabam.marvelbattle")
--alert(string.format("State of Safari: %s", state))
gcOne = getColor(1535, 1018)
gcTwo = getColor(111, 290)
usleep(1e6) 
--alert(string.format('3223343: %d .. 12961223: %d', gcOne, gcTwo))
gc1 = 'no'
gc2 = 'no'

if gcOne == 3223343 then gc1 = 'yes' else gc1 = 'no' end
if gcTwo == 12961223 then gc2 = 'yes' else gc2 = 'no' end

alert(gc1..' - '..gc2)









































