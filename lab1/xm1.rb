def mileage(miles_driven, gas_used)
	return miles_driven / gas_used
end
trip_mileage = mileage(400, 12)
puts "you got #{trip_mileage} MPG on this trip."

lifetime_mileage = mileage(11432, 366)
puts "this car averages #{lifetime_mileage} MPG." #возвращаемые значения
puts"---------------"

def mileage(miles_driven , gas_used)
	miles_driven / gas_used
end
puts mileage(400, 12)  #неявные
puts "--------------"

def mileage(miles_driven, gas_used)
 if gas_used == 0
 return 0.0    #ранее возвращение
 end
 miles_driven / gas_used
end
puts mileage(0, 0)
puts"-----------"

def talk(animal_type, name)
	if animal_type =="bird"
		puts "#{name} says chirp! chirp!"
	elsif animal_type =="dog"
		puts "#{name} says Bark"
	elsif animal_type =="cat"
		puts "#{name} says meow!"
	end
end                                  #беспорядок в методах

def move(animal_type,name,destination)
	if animal_type =="bird"
		puts "#{name} flies to the #{destination}."
	elsif animal_type == "dog"
        puts "#{name} runs to the #{destination}."
    elsif animal_type == "cat"
        puts "#{name} runs to the #{destination}."
   end
end

def report_age(name, age)
    puts "#{name} is #{age} years old."
end

move("bird", "Whistler", "tree")
talk("dog", "Sadie")
talk("bird", "Whistler")
move("cat", "Smudge", "house")
report_age("Smudge", 6)

#пошло поехало как сделать код куда меньше
			