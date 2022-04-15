usleep(2e6) 

imagePath = "/images/auto.png"
region = {1089, 1365, 126, 126}
result = findImage(imagePath, 1, 0.8, region, true)

repeat
toast("findImage: " .. tostring({result}), 1) usleep(1e6) --screenshot("Screenshots/autobutton.png")
until 2>4
--usleep(2e6) 







--repeat usleep(5e5) until result ~= nil usleep(1e5) toast('found', 1)
