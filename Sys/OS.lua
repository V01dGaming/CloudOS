os.pullEvent = os.pullEventRaw


-- Start of Variables
    -- Option Numbers
    local Notices = "1"
    local SysInfo = "2"
    local Reboot = "3"
    -- Options
    local Option1 = "Notice Board"
    local Option2 = "System Info"
    local Option3 = "Reboot"
    -- Actions
    local Action1 = ""
    -- Info
    local OSName = "CloudOS"
    local UserInput = ""
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

function ListOptions()
    print("1) " .. Option1)
end
-- End of Functions


-- Start of Program
Title()
ListOptions()
Input()
-- End of Program