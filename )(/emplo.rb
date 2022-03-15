class Employee                  #класс employee
	attr_reader :name, :salary
	def name=(name)
		if name ==""
			raise "Name can't be blank"
		end
		@name = name
	end

	def salary=(salary)
		if salary < 0
			raise "a salary of #{salary} isnt valid!"
		end
		@salary = salary
	end

	def print_pay_stub
		puts "Name: #{@name}"
		pay_for_period = (@salary / 365.0) * 14
        puts "pay this period: $#{pay_for_period}"
    end
end

employee = Employee.new
employee.name = "Jane Doe"
employee.salary = 50000
employee.print_pay_stub
puts "-------------"
puts format("The %s cost %i cents each.", "gumballs", 23) #форматной последовательности — части строки,которая будет заменяться значением в определенном формате.
puts format("That will be $%f please.", 0.23 * 5) #форматные последовательности
puts "---------------"
puts format("A string: %s", "hello") #s-строка,i-цел число.f-дроп число с плав точкой.
puts format("An integer: %i", 15)
puts format("A float: %f", 3.1415)
puts "//////////////////////"
puts format("%12s | %s", "Product", "Cost in Cents")
puts "-" * 30
puts format("%12s | %2i", "Stamps", 50)   # ширина формата.
puts format("%12s | %2i", "Paper Clips", 5)
puts format("%12s | %2i", "Tape", 99)