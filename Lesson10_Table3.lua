print("*****复杂数据类型 - 表2******")
print("******字典******")
print("******字典的声明,本质也是表******")
-- 字典是由键值对构成的
a = {["name"] = "小明", ["age"] = 14, ["1"] = 5}
-- 访问单个变量, 用中括号填键 来访问
print(a["name"])
print(a["age"])
print(a["1"])
-- 还可以类似 .成员变量 的形式得到值
print(a.name)
print(a.age)
-- 虽然可以通过 .成员变量 的形式得到值 但是 [不能是数字]
-- print(a.1) 报错

-- 改
a["name"] = "小王"
print(a.name)

-- 增
a["sex"] = false
print(a["sex"])
print(a.sex)

-- 删 (没有真正的"删除")
a["sex"] = nil
print(a.sex)

print("******字典的遍历******")
-- 如果要模拟字典 遍历一定用pairs
for k, v in pairs(a) do
	-- 可以传多个参数 一样可以打印 自动空格
	print(k,v)
end

for k in pairs(a) do
	print(k)
end

-- _ 也是遍历了键, 不会只遍历值
for _, v in pairs(a) do
	-- 可以传多个参数 一样可以打印 自动空格
	print(v)
end


print("******类和结构体******")


print("******表的公共操作******")