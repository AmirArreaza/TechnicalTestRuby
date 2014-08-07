require './bitmap_editor'

class MainBitmap

  Command_Line = "> "
  Hash_Operations = {
      create_bitmap:                "I",
      clear:                        "C",
      colour_bitmap:                "L",
      colour_vertical_bitmap:       "V",
      colour_horizontal_bitmap:     "H",
      colour_fill_bitmap:           "F",
      show_bitmap:                  "S",
      exit:                         "X"
  }

  def initialize
    @bitmap = BitmapEditor.new

    main_loop
  end

  private

  def main_loop
    loop do
      print Command_Line
      send_command
    end
  end

  def send_command
    input = gets.chomp.strip.upcase
    command = input[0]
    params = to_params_array(input)

    if input == Hash_Operations[:exit]
      exit 0
    else
      begin
        @bitmap.send(Hash_Operations.rassoc(command).shift, *params)
      rescue => error
        puts error
      end
    end
  end

  def to_params_array(input)
    input.split[1..-1]
  end
end

MainBitmap.new