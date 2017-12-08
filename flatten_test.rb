# flatten_test.rb

require "minitest/autorun"
require "flatten"

class TestFlatten < Minitest::Test

  def test_flattens_an_array_of_arbitrarily_nested_arrays_of_integers_into_a_flat_array_of_integers
    flattened_array = [[1,2,[3]],4].flatten
    assert_equal [1,2,3,4], flattened_array
  end

  def test_flattens_an_empty_array
    flattened_array = [].flatten
    assert_equal [], flattened_array
  end

  def test_can_flatten_a_very_nested_array
    silly_array = [3]
    8192.times do
      silly_array = [silly_array]
    end

    flattened_array = silly_array.flatten
    assert_equal 3, flattened_array
  end

end