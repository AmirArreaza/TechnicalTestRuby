require 'matrix'

class BitmapEditor

  attr_accessor :matrix

  #Function to create the Bitmap area of work
  #Recives a m= Rows, n=Columns
  def create_bitmap(m,n, colour='0')
    begin
      @matrix = Array.new(m) {Array.new(n) {colour}}

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
      @matrix[m-1][n-1] = colour
    rescue TypeError
      puts 'Argument is not valid'
    end
  end

  def colour_vertical_bitmap(x,m,n,colour)
    begin
      m1 = m - 1
      n1 = n - 1
      @matrix[m1][x - 1] = colour
      (n1 - m1).times do |i|
        @matrix[n1 - i][x - 1] = colour
      end
    rescue TypeError
      puts 'Argument is not valid'
    end
  end

  def colour_horizontal_bitmap(y,m,n,colour)
    begin
      m1 = m - 1
      n1 = n - 1
      @matrix[y - 1][n1] = colour
      (m1 - n1).times do |i|
        @matrix[y - 1][m1 - i] = colour
      end
    rescue TypeError
      puts 'Argument is not valid'
    end
  end

  alias_method :I, :create_bitmap
  alias_method :S, :show_bitmap
  alias_method :C, :colour_bitmap
  alias_method :V, :colour_vertical_bitmap
  alias_method :H, :colour_horizontal_bitmap

end