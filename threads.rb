require 'thread'

# threads = []
#
# threads << Thread.new {
#   puts 'Threads1'
#   puts 'Threads1'
#   puts 'Threads1'
# }
# threads << Thread.new {
#   puts 'Threads2'
#   puts 'Threads2'
#   puts 'Threads2'
# }
# threads << Thread.new {
#   puts 'Threads3'
#   puts 'Threads3'
#   puts 'Threads3'
# }
#
# threads.each do |t| t.join end

t1 = Thread.new { print "w"; Thread.pass; print "a"}
t2 = Thread.new { print "e"; Thread.pass; print "l"}
t1.join
t2.join
