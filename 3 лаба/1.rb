c_r = File.dirname(__FILE__)
require "#{c_r}/Employee.rb"

person = Employee.new(" Салтыков - щЕдрин Иван-Руслан Ахмед Заде ", "8.22.2012", "89180693157", "dkdhjgr", "VlAd504662@gmail.com", "0312210418", "postman", 0, "Pochta")

puts person
# person.tel=("8(918)294-1333")
# person.email=(""VlAd504662@gmail.com")
# person.year=("14.12.1998")
# person.pass=("2113 210418")
# person.fio=("Иванов Иван   ИваноВиЧ")
# puts person