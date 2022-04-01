lines = IO.readlines("at_coder.txt",chomp:true)
travel = {t:0,x:0,y:0}
t = lines.shift.to_i
t.times do |i|
  map = lines[i].split(" ").map(&:to_i)
  sub = (map[1]-travel[:x]).abs + (map[2]-travel[:y]).abs
  time = map[0] - travel[:t]
  puts sub
  if  sub <= time  && (time - sub)% 2 == 0
    travel[:x] = map[1]
    travel[:y] = map[2]
    travel[:t] = map[0]
    puts "Yes" if i == t-1
  else
    puts "No"
    exit
  end
end





