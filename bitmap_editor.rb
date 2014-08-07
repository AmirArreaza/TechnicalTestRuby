require 'matrix'

class BitmapEditor

  attr_accessor :matrix

  #Function to create the Bitmap area of work
  #Recives a m= Rows, n=Columns
  def create_bitmap(m,n)
    begin
      @m = m.to_i
      @n = n.to_i
      @matrix = Array.new(@m) {Array.new(@n) {'O'}}
    rescue TypeError
      puts 'Argument is not a number'
    end
  end

  def show_bitmap
    if @matrix.nil?
      puts 'You need to create a Bitmap first'
    else
      puts @matrix.to_a.map(&:inspect)
    end

  end

  def colour_bitmap(m,n,colour)
    begin
      @matrix[m.to_i - 1][n.to_i - 1] = colour
    rescue TypeError
      puts 'Argument is not valid'
    end
  end

  def colour_vertical_bitmap(x,m,n,colour)
    begin
      m1 = m.to_i - 1
      n1 = n.to_i - 1
      @matrix[m1][x.to_i - 1] = colour
      (n1 - m1).times do |i|
        @matrix[n1 - i][x.to_i - 1] = colour
      end
    rescue TypeError
      puts 'Argument is not valid'
    end
  end

  def colour_horizontal_bitmap(y,m,n,colour)
    begin
      m1 = m.to_i - 1
      n1 = n.to_i - 1
      @matrix[y.to_i - 1][n1] = colour
      (m1 - n1).times do |i|
        @matrix[y.to_i - 1][m1 - i] = colour
      end
    rescue TypeError
      puts 'Argument is not valid'
    end
  end

  def colour_fill_bitmap(x,y,colour)
    @matrix = Array.new(@m) {Array.new(@n) {colour}}

    if (x.to_i - 1)  > @m || (y.to_i  - 1) > @n
      puts 'Fill zone greater than Bitmap'
      return
    else
      x1 = x -1
      y1 = y -1

      while x < @n  do
        while y < @m  do
          puts x
          puts y
          @matrix[x.to_i][y.to_i] = colour
          y = y + 1
        end
        x = x + 1
      end

    end



  end

  alias_method :I, :create_bitmap
  alias_method :S, :show_bitmap
  alias_method :C, :colour_bitmap
  alias_method :V, :colour_vertical_bitmap
  alias_method :H, :colour_horizontal_bitmap
  alias_method :F, :colour_fill_bitmap

end