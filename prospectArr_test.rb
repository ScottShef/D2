require 'minitest/autorun'
require_relative 'rush_methods'

class ProspectArr_tests < Minitest::Test
    # UNIT TEST FOR METHOD: prospectArrPop(prospectNum)
    # RETURNS AN ARRAY FOR THE NUMBER OF PROSPECTORS IN STRING FORM "Rubyist #n"
    # prospectNum = n

    # THIS TEST CHECKS TO MAKE SURE THE FUNCTIONALITY OF ARRAY POPULATION WORKS PROPERLY
    # RETRUNS THE STRING: An array containing the string "Rubyist #1"
    def test_arr_pop_functionality_check
        testArr = prospectArrPop(1)
        assert_equal "Rubyist #1", testArr[0]
    end
end