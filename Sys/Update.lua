term.clear()
local nextFile = "/Sys/Login.lua"
local files = {
	[1] = {
		"startup.lua",
		"https://raw.githubusercontent.com/V01dGaming/CloudOS/master/startup.lua"
	},
	[2] = {
		"/Sys/Update.lua",
		"https://raw.githubusercontent.com/V01dGaming/CloudOS/master/Sys/Update.lua"
	},
	[3] = {
		"/Sys/OS.lua",
		"https://raw.githubusercontent.com/V01dGaming/CloudOS/master/Sys/OS.lua"
    },
    [4] = {
        "/Sys/API/Encrypt.lua",
        "https://raw.githubusercontent.com/V01dGaming/CloudOS/master/Sys/API/Encrypt.lua"
    },
	[5] = {
		"/Sys/.version",
		"https://raw.githubusercontent.com/V01dGaming/CloudOS/master/Sys/remoteVersion"
	}
}



remoteVersion = http.get("https://raw.githubusercontent.com/V01dGaming/CloudOS/master/Sys/remoteVersion")

local localVersion = fs.open("Sys/.version", "r")
local rVersion = remoteVersion.readAll()
local lVersion = localVersion.readAll()

localVersion.close()

if rVersion ~= lVersion then
    term.setCursorPos(1,1)
    print("Downloading Update...")
    print("Your Verison: ", lVersion)
    print("New Version: ", rVersion)
    for k, v in pairs(files) do
        local currentFile = fs.open(v[1], "w")

        local remoteFile = http.get(v[2])

        if remoteFile ~= nil then
            currentFile.write(remoteFile.readAll())
        end

        currentFile.close()

        remoteFile.close()
    end
end

local next = nextFile
shell.run(next)