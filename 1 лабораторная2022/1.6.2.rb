def read_from_file()
	config = IO.read("./input.txt")
	config.class    #=> String
	return config
end

a = read_from_file().split("\n")
a = a.sort_by{|e| e.size}
a.display
