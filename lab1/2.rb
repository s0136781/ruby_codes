puts "Hello, #{ARGV[0]}"# массив вводимый в консоли с клавиатуры.

puts "Your favorite language, #{ARGV[0]}?"
language = STDIN.gets.chomp #считывание входных данных
if language == "ruby"
    puts "you podliza"
else
    puts "Skoro budet ruby"
end
t = STDIN.gets
