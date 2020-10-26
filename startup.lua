os.pullEvent = os.pullEventRaw


-- Start of Variables
local OSName = "CloudOS"
local NextFile = ""
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
-- End of Functions


-- Start of Program
Title()
textutils.slowPrint("####################")
sleep(1)
shell.run("/Sys/Update.lua")
-- End of Program