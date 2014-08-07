require 'test/unit'
require_relative "bitmap_editor"

class BitmapEditorTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_print_bitmap
    b = BitmapEditor.new
    b.S
    b.I(2,2)
    b.S
    b.I(4,'A')
    b.S
    b.I(2,10)
    b.S
  end

  def test_colour_bitmap
    b = BitmapEditor.new
    b.I(5,5)

    b.I(5,5,'B')
    b.S

    b.V(2,2,3,'E')
    b.H(2,5,3,'Z')
    b.S
  end

end