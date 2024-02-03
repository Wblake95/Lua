-- This was interesting, lua doesn't have a range func
-- However, you can just double assign a variable?
-- Or make your own, I saw this and have no idea how it works.
-- Source
--https://stackoverflow.com/questions/12020574/lua-for-variable-in-range

for var=0,10 do print("double assign var: ",var) end

function range(from,to) 
	return function(_,last)
		if last >= to then return nil
		else return last+1
		end
	end, nil, from-1
end

for i in range(0,10) do print("function: ",i) end
