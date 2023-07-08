-- 1
function add(a,b)
	return a + b
end
function multiply(a)
	return a * 10
end
print(multiply(add(5,10)))
-- 2
function funcReturnTwice(a,b)
	return a,b
end
print(funcReturnTwice(3,4))--3,4
-- 4
while true do
	print("hello")
	wait(1)
end
print("good bye")
-- 5
while true do
	print("hello")
	wait(1)
	break
end
print("good bye")
