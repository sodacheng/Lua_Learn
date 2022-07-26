print("*******条件分支语句******")
a = 9

-- 单分支
-- if 条件 then ... ... end
if a > 5 then
	print("123")
end

-- 双分支
-- if 条件 then ... ... elseif 条件 then...else... end
if a < 5 then
	print("a<5")
else
	print("321")
end

-- 多分支
-- if 条件 then ... ... elseif 条件 then ... elseif 条件 then...else...end
-- Lua中 elseif一定是连着写的 否则报错
if a < 5 then
	print("a<5")
elseif a  == 6 then
	print("6")
elseif a == 7 then
	print("7")
else
	print("other")
end

if a >= 3 and a <= 9 then
	print("3到9之间")
end

-- lua中没有switch语法 需要自己实现