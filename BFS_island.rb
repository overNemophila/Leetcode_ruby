# @param {Character[][]} grid
###优化之后的方法
def bfs(x,y,grid)
  m = grid.length               #row
  n = grid[0].length            #col

  queue = [[x, y]]
  while queue.length != 0
    i, j = queue.shift
    if i < 0 || i >= m || j < 0 || j >= n
      next
    end

    if grid[i][j] == "1"
      grid[i][j] = "0"
      queue << [i - 1, j]
      queue << [i + 1, j]
      queue << [i, j - 1]
      queue << [i, j + 1]
    end
  end
  return 1
end

def num_islands(grid)
  account = 0

  grid.each_with_index do |line, i| # element,position
    line.each_with_index do |num, j|
      account += bfs(i, j, grid) if num == '1'
    end
  end
  return account
end