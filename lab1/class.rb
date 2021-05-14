class Bird         #создание экземпляров новых классов
 def talk         #маленткий метод в каждый класс
 puts "Chirp! Chirp!"
 end
 def move(destination)
 puts "Flying to the #{destination}."
 end
end
class Dog
 def talk
 puts "Bark!"
 end
 def move(destination)
 puts "Running to the #{destination}."
 end
end
class Cat
 def talk
 puts "Meow!"
 end
 def move(destination)
 puts "Running to the #{destination}."
 end
end
bird = Bird.new
dog = Dog.new
cat = Cat.new
bird.move("tree")
dog.talk
bird.talk
cat.move("house")

class Blender
	def close_lid
		puts "Sealed tight!"
	end
                    #"игра с холодильником"
	def blend(speed)
		puts "Spinning on #{speed} setting."
	end
end

puts "-----------------"
blender = Blender.new
blender.close_lid
blender.blend("high")


class Bird  #переписанная прога с добавлением name, по причине хочу имя для животного!!
 def talk(name)
 puts "#{name} says Chirp! Chirp!"
 end
 def move(name, destination)
 puts "#{name} flies to the #{destination}."
 end
end
class Dog
 def talk(name)
 puts "#{name} says Bark!"
 end
 def move(name, destination)
 puts "#{name} runs to the #{destination}."
 end
end
class Cat
 def talk(name)
 puts "#{name} says Meow!"
 end
 def move(name, destination)
 puts "#{name} runs to the #{destination}."
 end
end

puts "----------------"
dog = Dog.new
dog_name = "daffy"
dog.talk(dog_name)
dog.move(dog_name, "fence")
cat = Cat.new
cat_name = "owo"
cat.talk(cat_name)
cat.move(cat_name, "litter box")

class Dog
	def make_up_name
		@name ="Sandy"
	end
	def talk
		puts "--------------"
		puts "#{@name} says Bark!"
	end         #срок жизни переменной экземпляра
end

dog = Dog.new
dog.make_up_name
dog.talk


class Dog
def make_up_name
	@name ="Sandy"
end
def talk       #продолжение
	puts "#{@name}says Bark!"
end
def move(destination)
	puts "#{@name} runs to the #{destination}."
end
def make_up_age
	@age = 5
end
def report_age
	puts "#{@name} is #{@age} years old."
end
end

puts "---------------"
dog = Dog.new
dog.make_up_name
dog.move("yard")
dog.make_up_age
dog.report_age

class MyClass #методы доступа к 1хbet
  def my_attribute=(new_value)
    @my_attribute = new_value
 end

  def my_attribute
    @my_attribute
 end
end

puts"-----------"
my_instance = MyClass.new
my_instance.my_attribute = "assigned via method call"
puts my_instance.my_attribute
my_instance.my_attribute=("same here")
puts my_instance.my_attribute


class Dog
	attr_reader :name, :age
	def name=(value)
		if value ==""
			puts "Name cant be blank!"
		else
			@name =value
		end
	end
                #проверка данных при вызове методов доступа
	def age=(value)
		if value < 0 
			puts "an age of #{value} isnt valid!"
		else
			@age = value
		end
	end

	def report_age
		puts "#{@name} is #{@age} years old."
	end
end