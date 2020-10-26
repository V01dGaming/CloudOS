os.pullEvent = os.pullEventRaw


-- Start of Variables
    -- Option Numbers
    local SysInfo = "1"
    -- Options
    local Option1 = "System Info"
    local Option2 = ""
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