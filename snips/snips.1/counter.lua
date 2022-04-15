count = 1
tempCount = 1
countMax = 20

function myFunction()

	-- some code (definetely not interfering with the counters)
	toast(count)
	count = count+1

	if tempCount <= 1 then
	count = 1
	end

	tempCount = 2
	usleep(2e6) 
end

repeat myFunction() until count >= countMax
log(string.format('%d/%d', count, maxCount))
stop()


























