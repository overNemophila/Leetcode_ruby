def dfs(i,j,grid)
  m = grid.length
  n = grid[0].length
  if i < 0 || i >= m ||  j < 0 || j >= n
    next
  elsif grid[i][j] == "1"
    grid[i][j] = "0"
    dfs(i - 1 , j, grid[i])
    dfs(i + 1 , j, grid[i])
    dfs(i , j + 1, grid[i])
    dfs(i , j - 1, grid[i])
  end
  1
end
def num_islands(grid)
  account = 0
  grid.each_with_index do |line , i| # i row， n col
    line.each_with_index do |num , j|
      account += dfs(i,j,grid) if num == "1"
    end
  end
  account
end
grid = [
  ["1","1","0","0","0"],
  ["1","1","0","0","0"],
  ["0","0","1","0","0"],
  ["0","0","0","1","1"]
]

num_islands(grid)
