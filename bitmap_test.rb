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
    b.I(2,2)
    b.I(4,'A')
    b.I(2,10)
    b.I()
  end

end