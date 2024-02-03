-- Apparently, if the key in an array isn't 1, ipairs() fails.


array1= {}
array2= {}
array3= {}
array4= {}

for i=97,100 do -- key is string, starting with "a"
	array1[string.char(i)] = i
end


for i=97,100 do -- key is number, starting with 97
	array2[i] = string.char(i)
end


for i=1,4 do -- key is number starting with 1
	array3[i] = i
end


for i=-2,4 do -- key starts at -2
	array4[i] = i
end


for key,value in ipairs(array1) do
	print("array1", key,value)
end

for key,value in ipairs(array2) do
	print("array2", key,value)
end

for key,value in ipairs(array3) do
	-- will print normally
	print("array3", key,value)
end

for key,value in ipairs(array4) do
	-- will skip -2 to 0 and start at 1
	print("array4", key,value)
end
