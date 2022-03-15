def my_method(&my_block) #передача блока
	puts "we're in the method,about to invoke your block!"
	my_block.call # вызывает переданный блок
	puts "we're back in the method!"
end

my_method do  #начало блока
	puts "we're in the block!"
end #конец

puts"----------------"

#многократный вызов блока.
def twice(&my_block)
	puts "in the method,about to call the block!"
	my_block.call #после завершения управление передается методу
	puts "back in the method,about to call the block again!"
	my_block.call
	puts "back in the method,about to return!"
end

twice do
	puts "wooooo!"
end

puts"-------------"

 #параметры блока(значение передаются при выполнения блока)
def give(&my_block)
	my_block.call("2 turtle doves", "1 partridge")
end

give do | present1, present2|
	puts "My method gave to me...."
	puts present1, present2
end

puts "-----------"

#Ключевое слово yield находит и выполняет блок, для которого
#был вызван метод, — без необходимости объявлять специальный
#параметр для передачи блока.
def give
	yield "2 turtle doves", "1 partridge"
end

give do | present1, present2|
	puts present1, present2
end

puts "////////////"
 
 #форматы блоков ну для красоты и сокращение на 1 строку
def take_this
	yield "present"
end

take_this do |thing|
	puts "do/end block got #{thing}"
end
take_this {|thing| puts "braces block got #{thing}"}

#метод each Метод each использует эту возможность для
#последовательного перебора всех элементов
#массива с передачей их блоку
#устронение повторений из кода
def total(prices)
   amount = 0
   index = 0
   while index < prices.length
     amount += prices[index]
     index += 1
   end
   amount
end

def refund(prices)
   amount = 0
   index = 0
   while index < prices.length
     amount -= prices[index]
     index += 1
   end
   amount
end

def show_discounts(prices)
   index = 0
   while index < prices.length
     amount_off = prices[index] / 3.0
     puts format("Your discount: $%.2f", amount_off)
     index += 1
   end
end

["a", "b", "c"].each { |param| puts param }