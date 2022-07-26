a = {9,8,7,6,5,4,3,2,1}

Sort = {}
Sort.MaoPao = function(a)
  for i = 1, #a do
    for j = 1, #a-1 do
      if a[j] > a[j+1] then
        a[j] = a[j] + a[j+1]
        a[j+1] = a[j] - a[j+1]
        a[j] = a[j] - a[j+1]
      end
    end
  end
end

--[[
Sort.MaoPao(a)
for i = 1,#a do
  print(a[i])
end
]]

Sort.Sel = function(a)
    for i = 1, #a-1 do
      local index = i
      for j = i+1, #a do
      if a[i] > a[j] then
        index = j
      end
    end
    if index ~= i then
      temp = a[index]
      a[index] = a[i]
      a[i] = temp
    end
  end
end

Sort.Sel(a)
for i = 1, #a do
  print(a[i])
end

