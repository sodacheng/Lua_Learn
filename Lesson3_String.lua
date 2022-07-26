print("******字符串******")
str = "双引号字符串"
str2 = '单引号字符串'

-- 获取字符串的长度
print("******字符串长度******")
s = "aBcdEfG"
print(#s) --7
s = "aBcdEfG字符串"
print(#s) --16 一个汉字在Lua中占3个长度 一个英文字符占一个长度

print("******字符串多行打印******")
-- lua中也是支持转义字符的
print("123\n123")

s = [[ 字符串
多
行
打
印
]]

print(s)

print("******字符串拼接******")
-- 字符串拼接 通过 ..
print("123" .. "456")
s1 = "123123"
s2 = 111
print(s1 .. s2)
s3 = 222
print(s2 .. s3) -- 111222 -> 不管什么类型 .. 都代表字符串拼接

print(string.format("我是小明, 我今年%d岁了", 18)) -- 我是小明, 我今年18岁了
--[[
%d : 与数字拼接
%a : 与任何子母拼接
%s : 与字符配对
... ...  lua字符串替换符
]]--

print("******别的类型转字符串*******")
a = true
print(a) -- 默认也会转字符串
print(tostring(a)) -- 只是打印的话没必要多此一举

print("*******字符串提供的公共方法******")
str = "abCdefg"
-- 小写转大写的方法
print(string.upper(str)) -- 不会改变原字符串
print(str)
-- 大写转小写
print(string.lower(str)) -- 不会改变原字符串
-- 翻转字符串
print(string.reverse(str)) -- gfedCba 不会改变原字符串
-- 字符串索引查找
print(string.find(str,"Cde")) -- 3		5 字符串出现的起始位置和结束位置 (Lua中的索引从1开始)
print(string.find(str,"C")) -- 3		3
-- 截取字符串
print(string.sub(str,3)) -- Cdefg 从第三个截取到后面
print(string.sub(str,3,4)) -- Cd 从第三个截取到第四个
-- 字符串重复
print(string.rep(str,2)) -- abCdefgabCdefg
-- 字符串修改
print(string.gsub(str,"Cd", "**")) -- ab**efg	1 -> 改了1次
-- 字符转 ASCII
a = string.byte("Lua",1) -- 第一个"L" 转成ASCII码
print(a)
-- ASCII码转字符
print(string.char(a))

print([[多行
打印]])