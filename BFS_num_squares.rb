# @param {Integer} n
# @return {Integer}
def num_squares(n)
  queue = [[0,0]]
  node = Set.new()
  seed = []
  (1..Integer.sqrt(n)).each do |i|
    seed << i * i
  end
  until queue.empty?
    sum,step = queue.shift
    return step if sum == n
    seed.each do |i|
      value = sum + i
      if value >n
        break
      elsif value <= n && !node.include?(value)
        queue << [value,step + 1]
        node << value
        #seed.delete_if{|i| i > n - node.max}
        return step if sum == n
      end
    end
  end
end