-- 1
-- область видимости
local number = "hello"
for number=1,10 do
	print(number)
end
print(number)
-- 2
function equation()
	return addition() / subtraction()
end
local function addition()
	return 5+10
end
local function subtraction()
	return 5-10
end
print(equation()) --error
-- 3
local function addition()
	return 5+10
end
local function subtraction()
	return 5-10
end
local function equation()
	return addition() / subtraction()
end
print(equation()) --error
