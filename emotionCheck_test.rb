require 'minitest/autorun'
require_relative 'rush_methods'

class TripSummary_tests < Minitest::Test
    # UNIT TEST FOR METHOD: emotionCheck(rubies)
    # RETURNS: rubies > 10 -> "Going home victorious!"
    #          rubies < 9 and rubies > 1 -> "Going home sad."
    #          rubies = 0 -> "Going home empty-handed."

    # TEST VERIFIES THAT THE PROPER STRING IS PRINTED WHEN RUBIES IS GREATER THAN 10
    def test_rubies_greater_than_nine
        assert_output("Going home victorious!\n"){emotionCheck(10)}
    end

    # TEST VERIFIES THAT THE PROPER STRING IS PRINTED WHEN RUBIES IS BETWEEN 1 AND 9
    def test_rubies_between_one_and_nine
        assert_output("Going home sad.\n"){emotionCheck(5)}
    end

    # TEST VERIFIES THAT THE PROPER STRING IS PRINTED WHEN RUBIES IS LESS THAN 1
    def test_rubies_less_than_one
        assert_output("Going home empty-handed.\n"){emotionCheck(0)}
    end
end