local start = 1
local endz = 1000

for i = start, endz do
	print("Coba " .. i)
	getBot():enter(tostring(i))
	sleep(100)
end
