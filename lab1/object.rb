class Dog < Animal

	def to_s
		"#{@name} the dog, age #{age}"
	end
end

lucy = Dog.new
lucy.name = "lucy"
lucy.age = 4

rex = Dog.new
rex.name = "Rex"
rex.age = 2

puts lucy, rex