require 'minitest/autorun'
require_relative 'rush_methods'

class RubyCounts_tests < Minitest::Test
    # UNIT TEST FOR METHOD: getRubyCounts(location, rubyInfo)
    # RETURNS THE MAXIMUM REAL AND FAKE RUBIES POSSIBLE AT THE GIVEN LOCATION
    
    # STUB USING HARD CODED DATA TO REPRESENT METHOD FUNCTIONALITY
    def test_ruby_count_return
        test_arr = [['home', 3, 1]] 
        assert_equal [3, 1], getRubyCounts('home', test_arr)
    end
end