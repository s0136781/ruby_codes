class Department

	attr_accessor :name, :tel

	def initialize(name, tel, selected_duty = nil)
		self.name= name
		self.tel= Department.correct_phone_numner(tel)
        @duties = []
        @selected_duty = selected_duty
		
		
	end

	def add_duty(duty)
        @duties.push(duty)
    end

    def select_duty(duty)
        @selected_duty = duty
    end

    def delete_duty
        @duties.delete_at(@selected_duty)
    end

    def get_content
        @duties[@selected_duty]
    end

    def change_content(other_duty)
        @duties[@selected_duty] = other_duty
    end

	def to_s
        if !@duties.empty?
            duty = @duties.join(', ')
            return "Подразделение - #{self.name}, телефон - #{self.phone}, Обязанности: #{duty}"
        end
        return "Подразделение - #{self.name}, телефон - #{self.phone}"
    end
                 
def show_duties
        if @duties.empty?
          "В этом подразделении нет обязанностей."
        else
          "Обязанности в этом подразделении: #{@duties.join(", ")}"
        end
                                                                    #оператор сопоставляет регулярное выражение со строкой и возвращает либо смещение совпадения из строки, либо ноль.
	def self.tel_check?(tel)
		if tel =~ /^(8|\+?7)([\W]*\d){10}$/ 
			true
		else 
			false
		end
	end

	def self.tel_convert(tel)
		begin
			if !self.tel_check?(tel)
				raise "Некорректный номер телефона!"
			else
				str = ""
				tel.scan(/\d/){|x| str.concat(x)}
				str[0] = '7'
				str.insert(1, '-')
				str.insert(5, '-')
				str
			end
		rescue
			print("\nВведите корректный номер телефона:")
			tel = $stdin.gets.chomp
			retry
		end
	end
end
	end