def fact1(n, ans)

if n == 0
  return ans
else
  return fact1(n-1, n*ans)
end

end

def myfact(n)
  return fact1(n, 1)
end

(0...100).each do |i|
  puts "#{myfact(3000)}"
end
