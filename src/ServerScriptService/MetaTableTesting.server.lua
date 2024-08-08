local metatable = {
	
	
}

metatable['hello'] = 5

metatable.__index = metatable

function metatable.printsomething()
	print(metatable.hello)
end

local newtable = setmetatable({}, metatable) --then your referencing the metatable's metatable 
--whenever index fails then it check the table of the parent

newtable.hello = 7

--if function called newtable.printsomething is made then it will have an avaible index and print 7

print(newtable.hello)
metatable["hello"] = 4
print(newtable.printsomething())