require('minitest/autorun')
require('minitest/rg')
require_relative('../house')

class TestHouse < MiniTest::Test

  def setup

    options = {"id" => 1, "house" => "Ravenclaw", "url" => "house_logo.jpg"}

    @house = House.new(options)

  end

  def test_id
    assert_equal(1, @house.id)
  end

  def test_house
    assert_equal("Ravenclaw", @house.house)
  end

  def test_url
    assert_equal("house_logo.jpg", @house.url)
  end

end
