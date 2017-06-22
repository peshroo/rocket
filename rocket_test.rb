require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!
  def setup
    @rocket = Rocket.new
  end

  def test_new_name
    @rocket.name = ("Bob")
    assert @rocket.name = "Bob"
  end

  def test_different_new_name
    @rocket.name = ("Bob")
    refute @rocket.name == "Hello"
  end

  def test_new_colour
    @rocket.colour = ("orange")
    assert @rocket.colour = "orange"
  end

  def test_different_new_colour
    @rocket.colour = (1)
    refute @rocket.colour == "orange"
  end

end
