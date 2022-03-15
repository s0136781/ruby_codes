def last_digit(x,q=10)
  x % q
end

def digits_sum(x,q=10)
  res = 0
  while x > 0
      res += last_digit(x,q).to_i #преобразует строку в целое число
      x /= q
    end
    res
end

def pr(x,q=10)
	pr =1
	while x > 0
		pr *=last_digit(x,q).to_i
		x /=q
	end
	pr
end

def min(x,q=10)
min = x % q
while x > 0
	x /=q
	if x < min then
		min = x.to_i
	end
	 x/=10
	end
	min 
end

def max(x,q=10)
max = x % q
while x > 0
	x /=q
	if x > max then
		max = x.to_i
	end
	 x/=10
	end
	max 
end

puts max(16)
puts min(16)
puts pr(45)
puts digits_sum(135)