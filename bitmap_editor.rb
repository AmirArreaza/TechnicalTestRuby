require 'matrix'

class BitmapEditor

  attr_accessor :matrix

  #Function to create the Bitmap area of work
  #Recives a m= Rows, n=Columns
  def create_bitmap(m,n)
    begin
      @matrix = Array.new(m) {Array.new(n) {'0'}}
      puts @matrix.to_a.map(&:inspect)

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

    alias_method :I, :create_bitmap
    alias_method :S, :show_bitmap

end