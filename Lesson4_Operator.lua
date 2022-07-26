print("******运算符******")
print("******算数运算符******")
-- + - * / % ^
-- 没有自增自减
-- 没有复合运算符 += -= *= /= %=

print("加法运算" .. 1+2)
a = 1
b = 2
print(a+b)
print("123.4" + 1) -- 124.4 字符串 可以进行 算数运算符操作 会自动转成 number

print("减法运算" .. 1-2)
print("111" - 1)

print("乘法运算" .. 1 *2)
print("123" * 2) 

print("除法运算" .. 1 / 2)
print("3" / 2)

print("取余运算" .. 1 % 2)
print("123.4" % 2)

-- ^ lua中该符号是幂运算 C#中该符号用作异或
print("幂运算" .. 2 ^ 3)
print("2" ^ 2)


print("******条件运算符******")
-- > < >= <= == ~=(Lua中的不等于)
print(3 > 1)
print(3 < 1)
print(3 == 1)
print(3 ~= 1)

print("*******逻辑运算符******")
-- 逻辑与 and (C#中的&&)
-- 逻辑或 or (C#中的||)
-- 逻辑非 not (C#中的!)
-- 同C#一样遵循逻辑运算的 "短路"规则
print(true and false)
print(true or false)
print(not true)

print("******位运算符******")
-- lua不支持位运算符 & | ~ 需要我们自己实现

print("******三目运算符******")
-- ? : lua 也不支持 三目运算符