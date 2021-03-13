puts "#{ARGV[0]}, input command of OS?"
oscommand = STDIN.gets.chomp
system(oscommand)
t = STDIN.gets
