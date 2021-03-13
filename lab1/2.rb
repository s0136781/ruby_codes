puts "Привет, #{ARGV[0]}"# массив вводимый в консоли с клавиатуры.

puts "Ваш любимый язык программирования, #{ARGV[0]}?"
language = STDIN.gets.chomp #считывание входных данных
if language == "ruby"
    puts "ты подлиза,фу"
else
    puts "значит скоро будет,руби"
end
t = STDIN.gets
