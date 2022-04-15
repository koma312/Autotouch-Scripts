local oneHour = 1000000 * 60 * 60;
local endTime = os.time() + oneHour;
local restartTime;

while true do
    while os.time() < endTime do
        - - your code repeats here
        if appState(“your.app.key.here") ~= "ACTIVATED" then
            appRun(“your.app.key.here”); ——if the app has crashed then reopen the app
            usleep(10000000); ——give the app time to load
        end

    end

    if appState(“your.app.key.here") == "ACTIVATED" then
        appKill(“your.app.key.here”)
    end

    restartTime = os.time() + oneHour;
    while os.time() < restartTime do
        usleep(10000000); ——sleep 10 seconds at a time until the hour has passed.  This will allow you to stop the script while your app is inactive
    end

    appRun(“your.app.key.here”);
    endTime = os.time() + oneHour;