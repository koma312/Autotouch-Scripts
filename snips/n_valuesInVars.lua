keys = {["a"]={74, 109}, ["b"]={451, 1187}, ... }

function tapKey(key)
  touchDown(0, key[1], key[2])
  usleep(16000)
  touchUp(0, key[1], key[2])
  usleep(250000)
end

tapKey(keys.c)
tapKey(keys.a)
tapKey(keys.b)

———————————————————— 

z = {['a']={1, 2}, ['b']={3, 4}, ['c']={1731, 761}, ['d']={xx, yy}, ['e']={8, 9}, ['f']={1024, 268}, ['g']={6, 5}}

usleep(2e6)

function say(key)
	xx = key[1]
	yy = key[2]

  alert(string.format('xx: %d, yy:%d', xx, yy))
end

say(z.c)
usleep(5e6) 



























