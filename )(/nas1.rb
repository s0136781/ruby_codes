class Person   #super  с ним указывается аргументы,переданные из суперкласса.

	def greet_by_name(name)
		"hello, #{name}!"
	end
end

class Friend < Person

	def greet_by_name(name)
		basic_greeting = super(name)
		"#{basic_greeting} Glad to see you!"
	end
end

class Friend < Person

	def greet_by_name(name)
		basic_greeting = super
		"#{basic_greeting} glad to see you!"
	end 
end


puts Friend.new.greet_by_name("Meghan")
puts "------------------"
puts Friend.new.greet_by_name("bert")