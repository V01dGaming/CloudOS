local Encrypt.lua 

function encrypt(text, key)
    return text:gsub("%a", function(t)
            local base = (t:lower() == t and string.byte('a') or string.byte('A'))
 
            local r = t:byte() - base
            r = r + key
            r = r%26
            r = r + base
            return string.char(r)
        end)
end
 
function decrypt(text, key)
    return encrypt(text, -key)
end