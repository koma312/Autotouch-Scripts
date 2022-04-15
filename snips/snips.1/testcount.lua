count = 0
countMax = 20

function myFunction()
	toast(count)
	count = count+1
	usleep(2e6)
end

repeat myFunction() until count >= countMax
log(string.format('%d/%d', count, maxCount))
stop()


























