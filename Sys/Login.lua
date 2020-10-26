os.pullEvent = os.pullEventRaw
os.loadAPI(/Sys/API/Encrypt.lua)

-- Start of Variables
local OSName = "CloudOS"

local Username = "Mpyuz"
local Password = "Naaef"
local NextFilePath = "Eke"
local NextFile = "AE"

local ClearUsername = Encrypt.decrypt(Username, 12)
local ClearPassword = Encrypt.decrypt(Password, 12)
local ClearNextFilePath = Encrypt.decrypt(NextFilePath, 12)
local ClearNextFile = Encrypt.decrypt(NextFile, 12)

local User = ""
local Pass = ""
-- End of Variables


-- Start of Functions
function Cursor1()
    term.setCursorPos(1,3)
end

function Title()
    term.clear()
    term.setCursorPos(1,1)
    print(OSName .. " (TM)")
    Cursor1()
end

function UserInput()
    Title()
    print("Username:")
    User = read()
end

function PassInput()
    Title()
    print("Password:")
    Pass = read("*")
end
-- End of Functions


-- Start of Program
UserInput()
PassInput()

if (User == ClearUsername) and (Pass == ClearPassword) then
    term.clear()
    term.setCursorPos(1,1)
    print("ACCESS GRANTED!")
    sleep(2)
    shell.run("/" .. ClearNextFilePath .. "/" .. ClearNextFile .. ".lua")
else
    term.clear()
    term.setCursorPos(1,1)
    print("ACCESS DENIED!")
    sleep(2)
    shell.run("reboot")
end
-- End of Program