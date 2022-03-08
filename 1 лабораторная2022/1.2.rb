puts "приветствую вас,дорогой друг, #{ARGV[0]}"
t = STDIN.gets

puts "Поведуй мне о своем любимом языке программирования, #{ARGV[0]}"
language = STDIN.gets.chomp #считывание входных данных
if language =="ruby"
	puts "ты подлиза,эх"
else
	puts "значит твоей жизнью станет,руби"
end
