local file = io.open("path.txt", "r")
if not file then
    error("File path.txt tidak dapat dibuka.")
end

local pathz = {}
for line in file:lines() do
    table.insert(pathz, line)
end
file:close()

local world = "yourWorld|"

for _, i in ipairs(pathz) do
    print("Mencoba: " .. world .. i .. " [" .. getBot():getSignal().x .. " , " .. getBot():getSignal().y .. "]")
	getBot():warp(world .. i)
	-- delay dibawah 3 detik ez ercon
	sleep(3000)
end
