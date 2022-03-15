class MyClass #self и вызов других методов для того же эеземпляра.
    def first_method
        puts "Current instance within first_method:#{self}"
        self.second_method
    end

def second_method
    puts"Current instance within second_method:#{self}"
  end
end

class Employee

	attr_reader :name

	def name=(name) #код проверки и присваивания
		if name ==""
			raise "Name cant be blank!"
		end
        @name = name
end

    def initialize(name = "Anonymous")
    	self.name = name
    end

    def print_name
    	puts "Name:#{name}"
    end
end

class SalariedEmployee < Employee

	attr_reader :Salary

    def salary=(salary)
    	if salary < 0
    		raise "a salary of #{salary} isnt valid!"
    	end
    	@salary = salary
    end

    def initialize (name = "Anonymous", salary = 0.0)
    	super(name)
    	self.salary = salary
    end

    def print_pay_stub
    	print_name  #вывод имени поручается суперклассу
    	pay_for_period = (salary/365.0)*14
    	formatted_pay =format("$.2f",pay_for_period)
    	puts"Pay this period:#{formatted_pay}"
    end


class HourlyEmployee < Employee

	def self.security_guard(name)
		HourlyEmployee.new(name,19.25, 30)
	end
	def self.cashier(name)
		HourlyEmployee.new(name,12.75, 25)
	end
	def self.janitor(name)
		HourlyEmployee.new(name,10.50,20)
	end

	attr_reader :hourly_wage, :hours_per_week

	def hourly_wage= (hourly_wage)
		if hourly_wage < 0
			raise "An hourly wage of #{hourly_wage} isnt valid!"
		end
		@hourly_wage = hourly_wage
	end

	def hours_per_week = (hours_per_week)
		if hours_per_week < 0
			raise "#{hours_per_week} hours per week isnt valid!"
        end
        @hours_per_week = hours_per_week
    end

    def initialize(name = "Anonymous",hourly_Wage = 0.0,hours_per_week = 0.0)
      super(name)
      self.hourly_wage = hourly_wage
      self.hours_per_week = hours_per_week
  end

  def print_pay_stub
    print_name
    pay_for_period = hourly_wage * hours_per_week * 2
    formatted_pay = format("$%.2f", pay_for_period)
    puts "Pay This Period: #{formatted_pay}"
 end
end


my_object = MyClass.new
my_object.first_method
puts"----------------------"
jane = SalariedEmployee.new("Jane Doe", 50000)
jane.print_pay_stub
angela = HourlyEmployee.security_guard("Angela Matthews")
ivan = HourlyEmployee.cashier("Ivan Stokes")
angela.print_pay_stub
ivan.print_pay_stub