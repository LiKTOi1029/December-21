function fChecker(input)
	local tBrackets = {}
	local tPointer = {}
	for num0 = 1, input:len(), 1 do
		table.insert(tBrackets, input:sub(num0,num0))
	end
	for num1, bracket in ipairs(tBrackets) do
		--thinking on how to count each single paranthesis, bracket, and curly brace rn
	end
	return true
end
repeat
	io.write(">>Type EXIT to exit and type anything else to input\n")
	local choice = io.read("*l"):gsub("\n", "")
	if choice ~= "EXIT" then fChecker(choice) 
	else break end
until true == false