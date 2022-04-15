function reformatInt(i) --adds thousands seperator
  return tostring(i):reverse():gsub("%d%d%d", "%1,"):reverse():gsub("^,", "")
end

floatx = tonumber(string.format("%.2f", 398.12345))

intx = tonumber(string.format("%i", 398))

largex = reformatInt(3000000000000)

alert(string.format('floatx:%s, intx: %i, largex: %s', floatx, intx, largex))
usleep(3e6)
stop()








































