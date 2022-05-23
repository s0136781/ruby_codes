def zad5(str) #Дана строка. Необходимо найти наибольшее количество идущих подряд символов кириллицы.
	return str.scan(/[А-я]+/).sort_by{|e| e.size}[-1].size
end

def zad7(str) #Дана строка. Необходимо найти минимальное из имеющихся в ней натуральных чисел.
	return ( str.scan(/\d*/) - [""] ).map{ |i| i.to_i }.min
end

def zad14(str) #Дана строка. Необходимо найти наибольшее количество идущих подряд цифр.
	return str.scan(/[0-9]+/).sort_by{|e| e.size}[-1].size
end


puts "5|7|14"
inp = $stdin.gets.chomp.to_i


str = "АБВГ3джз821ИКЛ1МНО" 

case inp
when 5
	puts zad5(str)
when 7
	puts zad7(str)
when 14
	puts zad14(str)
end