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

  def test_lift_off_with_rocket_grounded
    @rocket.lift_off == true
    @rocket.flying? == true
  end

  def test_lift_off_with_rocket_in_flight
    @rocket.lift_off
    @rocket.lift_off == false
    @rocket.flying? == true
  end

  def test_land_with_rocket_in_flight
  end

  def test_grounded_rocket_cant_land
  end

  def test_flying_rocket_not_flying_after_landing
  end

  def test_status_is_flying
  end

  def test_status_is_not_flying
  end

end
