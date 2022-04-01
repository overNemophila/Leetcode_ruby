# @param {String[]} deadends
# @param {String} target
# @return {Integer}
# BFS求最短路径的关键 上一步入队的点全都出队 才算一轮结束
require 'set'
def open_lock(deadends, target)
  dead_set = Set.new(deadends)  #set for deadends
  queue = [['0000', 0]]
  visited = Set.new(['0000']) #遍历起点
  until queue.empty?
    string, steps = queue.shift  # remove 队首元素， 当前string和step迭代
    if string == target # 找到了
      return steps
    elsif dead_set.include?(string) #在deadends里面的话直接跳出当前循环，进入下一个循环。
      next
    end

    4.times do |i|
      digit = string[i].to_i  #当前队首元素 从第一位到第四位
      [-1, 1].each do |move|  #按位+1 -1创造八个子节点
        new_digit = (digit + move) % 10 # -1 -> 9
        new_string = string[0...i] + new_digit.to_s + string[ i + 1 ..-1]
        #旧的0到i-1位 i位是新生成的节点数字 旧的i+1位到结束
        # 0...i 避免了使用i-1 的时候 i=0的情况。 i+1..-1 在i=3的时候 输出为空
        unless visited.include?(new_string) #避免重复循环访问 eg：0000-> -1 -> 0009 -> +1 -> 0000
          visited << new_string
          queue << [new_string, steps+1]  #只原有step+1，step自增不在这里
        end
      end
    end
  end
  return -1
end


