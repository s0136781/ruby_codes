class Animal    # иерархия классов животных
	attr_reader :name, :age

	def name=(value)
		if value ==""
			raise "name cant be blank!"
		end 
		@name = value
	end

	def age=(value)
		if value < 0
			raise "an age of #{value} isnt valid!"
		end
		@age = value
	end

	def talk
		puts "#{name} says Bark!"
	end

	def move(destination)
		puts "#{@name} runs to the #{destination}."
	end

	def report_age
		puts "#{@name} is #{@age} years old."
	end
end
 
 class Dog < Animal
 end

class Bird < Animal
	def talk
		puts "#{@name} says Chirp!chirp!" #тут произошло переопределение метода talk от animal,иначе еслибы этого не было кот и птица гавкали.
	end
end

class Cat < Animal
	def talk
		puts "#{@name} says Meow!"
	end
end

class Person

	def greeting
		puts "hello"
	end
end

class Friend < Person   #слово "super" тоесть при его написание вызывает переопределяемый метод в суперкласса(вызов переопределяющего метода в субклассе)

	def greeting
		super
		puts "glad to see you"
	end
end



whiskers = Cat.new
whiskers.name = "whiskers"
fido = Dog.new
fido.name = "Fido"
polly = Bird.new
polly.name = "Polly"
polly.age = 2
polly.report_age
fido.move("yard")
whiskers.talk
polly.talk
puts"-----------------------"
Friend.new.greeting
