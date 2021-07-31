# test
require 'minitest/autorun'
require_relative 'resistor_color_duo'

# Common test data version: 2.1.0 00dda3a
class ResistorColorDuoTest < Minitest::Test
  def test_brown_and_black
    # skip
    assert_equal 10, ResistorColorDuo.value(["brown", "black"])
  end

  def test_blue_and_grey
    skip
    assert_equal 68, ResistorColorDuo.value(["blue", "grey"])
  end

  def test_yellow_and_violet
    skip
    assert_equal 47, ResistorColorDuo.value(["yellow", "violet"])
  end

  def test_orange_and_orange
    skip
    assert_equal 33, ResistorColorDuo.value(["orange", "orange"])
  end

  def test_ignore_additional_colors
    skip
    assert_equal 51, ResistorColorDuo.value(["green", "brown", "orange"])
  end
end


class ResistorColorDuo
  COLORS = {:black => 0,
            :brown => 1,
            :red => 2,
            :orange => 3,
            :yellow => 4,
            :green => 5,
            :blue => 6,
            :violet => 7,
            :grey => 8,
            :white => 9
           }
  def self.value(res = "green")
    one = COLORS[res[0].to_sym]
    two = COLORS[res[1].to_sym]
    num = "#{one}#{two}"
    num.to_i
  end
end
