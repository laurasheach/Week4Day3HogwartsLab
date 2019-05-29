require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class TestStudent < MiniTest::Test

  def setup

    options = {"id" => 1, "first_name" => "Harry", "last_name" => "Potter", "house_id" => 1, "age" => 12}

    @student = Student.new(options)

  end

  def test_id
    assert_equal(1, @student.id)
  end

  def test_first_name
    assert_equal("Harry", @student.first_name)
  end

  def test_last_name
    assert_equal("Potter", @student.last_name)
  end

  def test_house
    assert_equal(1, @student.house_id)
  end

  def test_age
    assert_equal(12, @student.age)
  end

  def test_pretty_name
    assert_equal("Harry Potter", @student.pretty_name)
  end

end
