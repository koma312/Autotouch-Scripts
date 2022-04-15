-- function champHelp()

local imagePath = "images/help.png"
local region = {610, 500, 105, 240}
repeat
local result = findImage(imagePath, 1, 0.9, region, true)

for i, v in pairs(result) do
        local x = v[1]
        local y = v[2]
    							log(string.format("Found rect at: x:%f, y:%f", x, y))

toast(x, 1)
usleep(1e6)
toast(y, 1)
end
--tap(x, y)
    usleep(1e6)
until x == nil
--until getColor(57, 1285) == 3223342
alert('done')




--[[


findImage({
    options, // OPTIONAL, options for finding image.
    duration: 800, // OPTIONAL, how long time you want it to keep finding? Three formats are supported: 1. `duration: 10` means repeat finding 10 times, the value must be a number, can't be a string; 2. `duration: '60s'` means keep finding for 60 seconds, the value must be seconds + a character 's'; 3. `duration: '2020-05-30 12:00:00'` means keep finding till 2020-05-30 12:00:00. Default is `duration: 10` means repeat 10 times, the value must be a string.
    interval: 1000, // OPTIONAL, interval between loops in milliseconds, default is 1000 milliseconds.
    exitIfFound: true, // OPTIONAL, if exit findImage if got a result successfully, default is true.
    eachFindingCallback: () => { // OPTIONAL, will call this function after each finding loop.
        //console.log(`------Did a time of findImage at ${new Date().toLocaleString()}-------`)
 
//toast("findingImage", 1);

    },
    foundCallback: result => { // OPTIONAL, will call this function while getting matched result, returns the rectangle coordinate matching the action you specified through `matchMethod`.
        //console.log(`Got result of findImage:\n${JSON.stringify(result, null, '    ')}`);





for i, v in pairs(result) do
        local x = v[1]
        local y = v[2]
    log(string.format("Found rect at: x:%f, y:%f", x, y))

    tap(x, y)
    usleep(16000)

end
--]]
































-- end

-- repeat champHelp()

