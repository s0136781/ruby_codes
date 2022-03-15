def accelerate
	puts "stepping on the gas"
	puts "speeding up"
end

def sound_horn
	puts "pressing the horn button"
	puts "beep beep!"
end

def use_headlights(brightness)
	puts "turning on headlights"
	puts "watch out for deer!"
end


def order_soda(flavor, size ="medium", quantity= 1)
	if quantity ==1
		plural ="soda"
	else
		plural ="sodas"
	end
	puts "#{quantity} #{size} #{flavor} #{plural},coming right up!"
end

accelerate
sound_horn
use_headlights("high-beam")
order_soda("orange")
order_soda("lemon-lime", "small", 2)
order_soda("grape", "large")

