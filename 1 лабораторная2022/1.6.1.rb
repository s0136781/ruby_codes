def read_from_file()
	config = IO.read('input1.txt')
	config.class    #=> String
	return config
end

a = read_from_file().split(" ")
a = a.sort_by{|e| e.size}
print a