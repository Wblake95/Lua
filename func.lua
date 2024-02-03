-- This is weird.
-- You can create a table, that looks like a list.
-- But, you can only iterate over it with 2 variables and a funtion...

function iterator(...)
	local args = {...} -- basically *args
	for i,j in ipairs(args) do
		print(j)
	end
end


print(iterator(1,2,3,4))
