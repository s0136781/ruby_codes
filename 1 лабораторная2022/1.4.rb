puts "#{ARGV[0]}, input command of OS?"
oscommand = STDIN.gets.chomp
system(oscommand)
t = STDIN.gets

puts "#{ARGV[0]}, input command of Ruby?"
rubycommand = STDIN.gets.chomp
system("ruby -e \"#{rubycommand}\"")
t = STDIN.gets