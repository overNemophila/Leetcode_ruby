require 'readline'
coin = {500 => 0, 100 => 0, 50 => 0  }
line = IO.readlines("at_coder.txt")
coin[500],coin[100],coin[50],total = line.map(&:to_i)
puts coin[500],coin[100],coin[50],total
way = 0
(0..coin[500]).each do |i|
  (0..coin[100]).each do|j|
    (0..coin[50]).each do |k|
      way+=1 if 500*i+100*j+50*k == total
    end
  end
end
puts way



