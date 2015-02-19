# big array of all arrays
# number of arrays = the number we

class Spiral
  attr_accessor :grid, :length, :start, :move_array

  def initialize(start, length)
    @start = start
    @length = length
    @grid = grid
    @move_array = move_array
  end

  def grid
    row_array = []
    @length.times do
      row_array.push(0)
    end

    grid = []
    @length.times do
      grid.push(row_array)
    end

    grid
  end

  def move_array
    move_array = [@length]
    i = @length - 1
    while i > 0
      move_array.push(i)
      move_array.push(i)
      i -= 1
    end
    move_array
  end

  def fill_grid
    operation_array = [increase(y), increase(x), decrease(y), decrease(x)]


    y = 0
    x = 0
    move_array.each do |step|
        index = move_array.index(step)
        operation = index % 4
      @grid[x][y].push("a")


      step.times do

      end
    end
  end

  def increase(m)
    m += 1
  end

  def decrease(m)
    m -= 1
  end

  ten times increase y
  nine times increase x
  nine times decrease y
  nine times decrease x

end

p spiral = Spiral.new(3, 10).move_array

spiral.each do |row|
  p row
end
