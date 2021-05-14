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
	while x >0
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

def simple_nums(input)

	def check(num, input)
		for i in 2..num/2
			return false if input.remainder(i) == 0 && num.remainder(i) == 0
		end
		true
	end

	sum=0
	for i in 2..input-1
		if check(i, input)
			sum += 1
		end
	end
	sum
end

def nums_div_three(input)
	sum,num = 0,input
	while num>0
		sum+=num.remainder(10) if num.remainder(10)%3==0
		num/=10
	end
	sum
end

def del_nums(input)
	


puts nums_div_three(679)
puts simple_nums(12)
puts max(16)
puts min(16)
puts pr(45)
puts digits_sum(14.4+5)
