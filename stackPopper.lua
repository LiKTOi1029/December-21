function fChecker(input)
	for num0 = 1, input:len(), 1 do
		print(input:sub(num0, num0))
	end
	return true
end
repeat
	io.write(">>Type EXIT to exit and type anything else to input\n")
	local choice = io.read("*l"):gsub("\n", "")
	if choice ~= "EXIT" then fChecker(choice) 
	else break end
until true == false