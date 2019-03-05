require 'minitest/autorun'
require_relative 'rush_methods'

class TripSummary_tests < Minitest::Test
    # UNIT TEST FOR THE METHOD tripSummary(real_rubies, fake_rubies)
    # RETURNS: real_rubies = 1 -> "1 ruby"
    #          fake_rubies = 1 -> "1 fake ruby"
    #          real_rubies = 0, 2 ... infinity -> "(# of real rubies) rubies"
    #          fake_rubies = 0, 2 ... infinity -> "(# of fake rubies) fake rubies"

    # TEST VERIFYING THAT PRINT STATEMENTS FOR ONE REAL AND TWO FAKE RUBIES FUNCTIONS PROPERLY
    def test_one_real_two_fake_summary
        assert_output("\t1 ruby.\n\t2 fake rubies.\n"){tripSummary(1,2)}
    end

    # TEST VERIFYING THAT PRINT STATEMENTS FOR TWO REAL AND ONE FAKE RUBY FUNCTIONS PROPERLY
    def test_two_real_one_fake_summary
        assert_output("\t2 rubies.\n\t1 fake ruby.\n"){tripSummary(2,1)}
    end
end