require 'minitest/autorun'
require 'minitest/pride'
require '../lib/finder'

class FinderTest < Minitest::Test

  def test_we_can_navigate_to_a_local_dir_from_atom
    finder = Finder.new("hello")
    expected = finder.navigate_to_local_dir

    assert_equal expected, 0
  end

  def test_we_can_confirm_our_current_directory
    finder = Finder.new("hello")
    expected = finder.pwd

    assert_equal expected, "/Users/elizabethsebian/turing/1module/class_files/okcugit/love_handler"
  end

end