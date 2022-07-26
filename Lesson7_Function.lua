print("******函数******")
-- function 函数名()
-- end

-- a = function()
-- end

-- function 是一个变量类型
print("******无参数无返回值的函数******")
function F1()
	print("F1函数")
end

F1()

-- 有点类似 C#中的 委托和事件的写法
F2 = function()
	print("F2函数")
end

-- 在一个函数声明之前, 不能执行
print("******有参数******")
function F3( a )
	print(a)
end

F3(1)
F3("123")
F3(true)
F3() -- 不传参数会认为是nil, 不会报错
F3(1,2,3) -- 多传参数会被丢弃, 不会报错

print("******有返回值******")
-- 函数声明不需要返回值, 可以返回多个值
function F4( a )
	return a, "123", true
end

temp = F4(1) -- 另外的返回值被丢弃了
print(temp)
temp1,temp2,temp3 = F4(1) 
-- 多返回值时 在前面声明多个变量来接取即可, 如果变量不够, 不影响, 只接取对应位置的返回值
print(temp1)
print(temp2)
print(temp3)
temp1,temp2,temp3,temp4 = F4(1) 
print(temp4) -- nil, 如果变量多了 也不影响, 直接赋nil

print("******函数的类型******")
-- 函数的类型就是function
F5 = function()
	print("123")
end

print(type(F5)) -- function


print("******函数的重载******")
-- 函数名相同 参数类型不同 或者参数个数不同 
-- => Lua [不支持] 函数重载, 会调用最后声明的函数

print("******变长参数******")
function F7( ... )
	-- 变长参数使用, 用一个表存起来, 再用
	arg = {...}
	for i = 1, #arg do
		print(arg[i])
	end
end

F7(1,"123",true,4.2)


print("******函数嵌套******")
function F8(  )
	F9 = function (  )
		print("123")
	end
	return F9
end

function F8(  )
	return function (  )
		print("456")
	end
end

f9 = F8()
f9()

-- 在Lua里闭包的体现就是在函数里返回一个函数, 改变了生命周期
function F9( x )
	-- 改变了传入参数的生命周期
	return	function ( y )
		return x + y
	end
end

f10 = F9(100) -- 改变了100的生命周期
print(f10(5)) -- 105
