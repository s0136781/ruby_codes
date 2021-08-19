class Employee

	attr_accessor :fio, :year, :tel, :addres, :email, :pass, :spec, :exper, :pow, :post, :wage

	def initialize(fio, year, tel, addres, email, pass, spec, exper, *args)
		self.fio= fio
		self.year= year
		self.tel= tel
		self.addres= addres
		self.email= email
		self.pass= pass
		self.spec= spec
		self.exper= exper
		self.pow= ""
		self.post= ""
		self.wage= ""

		if args.size > 0
			self.pow, self.post, self.wage = args  #args обединение в один и массив и self ссылка на обект.
		end
		
	end

	def fio=(fio)
		@fio = Employee.fio_convert(fio)
	end

	def year=(year)
		@year = Employee.year_convert(year)
	end

	def tel=(tel)
		@tel = Employee.tel_convert(tel)
	end

	def email=(email)
		@email = Employee.email_convert(email)
	end

	def pass=(pass)
		@pass = Employee.pass_convert(pass)
	end

	def to_s                                                           #Метод to_s определен в классе Object и возвращает строковое представление объекта, для которого он был вызван.
		puts "ФИО #{@fio}"
		puts "Год Рождения #{@year}"
		puts "Телефон #{@tel}"
		puts "Адрес #{@addres}"
		puts "E-mail #{@email}"
		puts "Данные паспорта #{@pass}"
		puts "Специальность #{@spec}"
		puts "Стаж работы #{@exper}"
		puts "Предыдущее место работы #{@pow}"
		puts "Должность на Предыдущем месте работы #{@post}"
		puts "Зарплата с предыдущей работы #{@wage}"

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

	def self.email_check?(email)
		if email =~ /^[\w]*+@[\w]*+\.+[A-Za-z]{2,3}$/
			true
		else
			false
		end
	end

	def self.email_convert(email)
		begin
			if !self.email_check?(email)
				raise "Некорректный адрес электронной почты!" 
			else
				email.downcase
			end
		rescue
			print("\nВведите корректный email:")
			email = $stdin.gets.chomp
			retry
		end
	end

	def self.fio_check?(fio)
		if fio =~ /^ *[А-Яа-я]* *-? *[А-Яа-я]* *[А-Яа-я]* *-? *[А-Яа-я]* *[А-Яа-я]* *[А-Яа-я]* */
			true
		else
			false
		end
	end

	def self.fio_convert(fio)
		begin
			if !self.fio_check?(fio)
				raise "Некорректные имя фамилия отчество!"
			else
				temp = fio.downcase.split(/(-)/).map{|x| x.split(" ")}.flatten.map{|x| x.capitalize}
				i = 0
				result = ""
				while i < temp.size
					case temp[i+1]
					when "-"
						result << temp[i] << temp[i+1]
						i += 2
					else
						if i == temp.size - 1
							result << temp[i]
						else
							result << temp[i] << " "
						end
					i += 1
					end
				end
				if result.count(" ") > 2
					result[result.rindex(" ") + 1..result.size] = result[result.rindex(" ") + 1..result.size].downcase
				end
				result
			end
		rescue
			print("\nВведите корректные ФИО:")
			fio = $stdin.gets.chomp
			retry
		end
	end


	def self.year_check?(year)
		if year =~ /^\d{1,2}.\d{1,2}.\d{2,4}/
			temp = year.split(".")
			case temp[1].to_i
			when 1, 3, 5, 7, 8, 10, 12
				if temp[0].to_i > 0 && temp[0].to_i < 32
					true
				else
					false
				end
			when 2
				if temp[0].to_i > 0 && temp[0].to_i < 29
					true
				else
					false
				end	
			when 4, 6, 9, 11
				if temp[0].to_i > 0 && temp[0].to_i < 31
					true
				else
					false
				end	
			else
				false
			end
		else
			false
		end
	end

	def self.year_convert(year)
		begin
			if !self.year_check?(year)
				raise "Некорректный год!"
			else
				temp = year.split(".")
				if temp[0].length < 2
					temp[0].insert(0, "0")
				end
				if temp[1].length < 2
					temp[1].insert(0, "0")
				end
				new_year = "#{temp[0]}.#{temp[1]}.#{temp[2]}"
			end
		rescue
			print("\nВведите корректную дату рождения:")
			year = $stdin.gets.chomp
			retry
		end
	end

	def self.pass_check?(pass)
		if pass =~ /^\d{4} ?\d{6}/
			true
		else
			false
		end
	end

	def self.pass_convert(pass)
		begin
			if !self.pass_check?(pass)
				raise "Некорректные паспортные данные!"
			else
				if pass.split(" ").length < 2
					pass.insert(4, " ")
				end
				pass
			end
		rescue
			print("\nВведите корректные паспортные данные:")
			pass = $stdin.gets.chomp
			retry
		end
	end
end