plusOne = 0

repeat
screenshot ("images/champs0" .. plusOne .. ".png", {0, 410, 2048, 900})screenshot() usleep(2e5)
plusOne = plusOne + 1
until plusOne >= 10

plusOne = 10

repeat
screenshot ("images/champs" .. plusOne .. ".png", {0, 410, 2048, 900})screenshot() usleep(2e5)
plusOne = plusOne + 1
until plusOne >= 12

toast('done')