def arr_min(arr) #минимальный элемент
	min = arr[0]
	for i in arr
		if i<min 
			min = i
		end
	end
	return min
end

def arr_max(arr)   # максимальный элемент
	max = arr[0].to_i
	for i in arr
		if i.to_i>max 
			max = i.to_i
		end
	end
	return max
end

def arr_sum(arr)                  #сумма
	sum = 0
	for i in arr
		sum += i.to_i
	end
	return sum
end

def arr_mult(arr)               # произведение
	sum = 1
	for i in arr
		sum *= i.to_i
	end
	return sum
end

puts "0 - exit"
a = 1
arr = Array.new(0) 
while a != "0"
	a = gets.chomp
	if a != "0"
		a.to_i
		arr = arr + Array[a]
	end
end

print arr, "\n"
print arr_sum(arr), " - сумма\n"
print arr_mult(arr), " - произведение\n"
print arr_min(arr), " - минимум\n"
print arr_max(arr), " - максимум\n"