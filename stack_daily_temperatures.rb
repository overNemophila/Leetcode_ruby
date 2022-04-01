# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
  answer = Array.new(temperatures.size,0 )
  stack = [0]
  temperatures.each_with_index do |val,i|
    next if i == 0
    while  !stack.empty? && val > temperatures[stack[-1]]
      answer[stack[-1]] = i - stack[-1]
      stack.pop
    end
    stack << i
  end
  answer
end

