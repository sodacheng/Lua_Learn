print("******迭代器遍历******")
-- 迭代器遍历 主要是用来遍历表的
-- #得到长度 并不一定使我们想要的 一般不要用#来遍历表

a = {[0] = 1, 2, [-1] = 3, 4, 5, [5] = 6}
print("******ipairs迭代器遍历******")
-- ipairs
-- ipairs遍历 还是 从1开始往后遍历的 小于等于0的值得不到 
-- 只能找到连续索引的 键 如果中间断序了 它也无法遍历出后面的内容
for i, k in ipairs(a) do
	print("ipairs遍历键值" .. i .. "_" .. k)
end

for i in ipairs(a) do
	print("ipairs只遍历键" .. i)
end



print("******pairs迭代器遍历******")
-- pairs (建议使用它遍历各种不规则的表)
-- pairs能够把所有的键都找到, 通过键可以得到值
for i,v in pairs(a) do
	print("pairs遍历键值" .. i .. "_" .. v)
end

for i in pairs(a) do
	print("pairs只遍历键" .. i)
end