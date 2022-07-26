print("******变量******")
-- lua中的简单变量类型
-- nil number string boolean
-- lua中所有的变量声明 都不需要声明变量类型 他会自动判断类型
-- 类似C# 里面的 var

-- lua中的一个变量 可以随便复制 -> 自动识别类型

-- 通过type 函数 我们可以得到变量的类型

-- lua中使用没有声明过的变量
-- 不会报错 默认值 是nil
print(b)

-- nil 有点类似 C#中的null
print("******nil******")
a = nil
print(a)
print(type(a))
print(type(type(a))) -- type()函数的返回值是string
print("******number******")
-- number 所有的数值都是number
a = 1
print(a)
print(type(a))

print("******string******")
a = "123123"
print(a)
-- 字符串的声明 使用 单引号或者双引号 包裹
-- lua里 没有char
a = '123'
print(type(a))
print(a)

print("*******boolean*******")
a = true
print(a)
a = false
print(a)
print(type(a))

-- 复杂数据类型
-- 函数 function
-- 表 table
-- 数据结构 userdata
-- 协同程序 thread(线程)
