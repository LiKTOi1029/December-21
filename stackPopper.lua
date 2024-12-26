function fChecker()
    local stack = {}
    local choice = read()
    for num = 1, #choice do
        local character = choice:sub(num,num)
        if character:match("[({[]") then
            table.insert(stack,character)
        elseif character:match("[)}]") then
            if #stack == 0 then
                return false
            end
            local top = table.remove(stack)
            if (character == ")" and top ~= "(") or
               (character == "}" and top ~= "{") or
               (character == "]" and top ~= "[") then
                return false
            end
        end
    end
    return #stack == 0
end

print(fChecker())