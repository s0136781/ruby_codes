class Car                        #наследование-супер классы.
	                            #наследование позволяет нескольким субклассам наследовать методы от суперкласса.
    attr_accessor :odometer
    attr_accessor :gas_used
    
    def mileage
      @odometer / @gas_used
    end
 
    def accelerate
      puts "Floor it!"
    end
 
    def sound_horn
      puts "Beep! Beep!"
    end
 
    def steer
      puts "Turn front 2 wheels."
    end
end

class Truck

    attr_accessor :odometer
    attr_accessor :gas_used

    def mileage
      @odometer / @gas_used
    end
 
    def accelerate
      puts "Floor it!"
    end
 
    def sound_horn
      puts "Beep! Beep!"
    end
 
    def steer
      puts "Turn front 2 wheels."
    end
end

class Motorcycle
    attr_accessor :odometer
    attr_accessor :gas_used
 
    def mileage
      @odometer / @gas_used
    end
 
   def accelerate
     puts "Floor it!"
   end
 
   def sound_horn
     puts "Beep! Beep!"
   end
 
   def steer
     puts "Turn front 2 wheels."
   end
end

class Vehicle              #супер класс

	attr_accessor :odometer
	attr_accessor :gas_used    #аттрибуты будут унаследоваться при обьявл субкласса

	def accelerate
		puts "floor it!"
	end

	def sound_horn
		puts "beep! beep!"
	end

	def steer 
		puts "turn front 2 wheels."
	end

	def mileage
		return @odometer / @gas_used
	end
end
	class Car < Vehicle
	end
	class Truck < Vehicle
	end
	class Motorcycle < Vehicle
	end
 


truck = Truck.new
truck.accelerate
truck.steer
car = Car.new
car.odometer = 11432
car.gas_used = 366
puts "Lifetime MPG:"
puts car.mileage
puts "-------------------------"
car.odometer = 22914
car.gas_used = 728 # так car  наследует методы экземляра ,а не переменые экземпляра,а методы создали переменные экз
puts car.instance_variables #переменные экземпляра принадлежат объекту,а не классу
puts "-------------------------"
