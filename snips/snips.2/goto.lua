max = 8
count = 1

while count <= max do
	if count == 3 then goto skip end
	toast('Count = '..count)
	usleep(2e6)

::skip::
	count = count + 1
end
































