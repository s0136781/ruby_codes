def last_digit(x)
  x % 10
end

def digits_sum(x)
  res = 0
  while x > 0
      res += last_digit(x).to_i #преобразует строку в целое число
      x /= 10
    end
    res
end

def pr(x)
	pr =1
	while x > 0
		pr *=last_digit(x).to_i
		x /=10
	end
	pr
end

def min(x)
min = x % 10
while x > 0
	x /=10
	if x < min then
		min = x.to_i
	end
	 x/=10
	end
	min 
end

def max(x)
max = x % 10
while x > 0
	x /=10
	if x > max then
		max = x.to_i
	end
	 x/=10
	end
	max 
end

 #проверка на простоту
def just str, num = 2
  if str < 2
    return false
  elsif str == 2
    return true
  elsif str % num == 0
    return false
  elsif num < str / 2
    just(str, num + 1)
  else
    return true
  end
end

# Метод 1 Найти сумму непростых делителей числа.
def method_1 num
  (2..num).select { |i| num % i == 0 and !just i }.compact.sum
end

# Метод 2 Найти количество цифр числа, меньших 3
def method_2 num
  num.to_s.each_char.select { |i| i.to_i < 3 }
end

# Метод 3 Найти количество чисел, не являющихся делителями исходного
# числа, не взамнопростых с ним и взаимно простых с суммой простых
# цифр этого числа.

# сумма цифр числа
def sum_just_char num
  num.to_s.each_char.map { |i| i.to_i if just(i.to_i) }.compact.sum
end

#делители числа
def del_num num
  (2..num.to_i).select { |i| num % i == 0 }.compact
end

#проверка на взаимную простоту двух чисел
def just_num num_1, num_2
  ((del_num num_1).map { |i| (del_num num_2).select { |j|  i == j }.compact}).map{|i| i[0]}.compact
end

def method_3 num
  (1..num).select { |i| i.to_i != 0 and num % i.to_i != 0 and !(just_num num, i).empty? and (just_num i, (sum_just_char num)).empty? }
end

print method_1 24

