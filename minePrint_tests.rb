require 'minitest/autorun'
require_relative 'rush_methods'

class MinePrint_tests < Minitest::Test
    # UNIT TEST FOR METHOD: minePrint(rubyInfo, location)
    # SUCCESS CASES: RETURNS A CORRESPONDING STRING FOR THE SCENARIO
    # FAILURE CASES: RETURNS nil

    # VERIFIES THAT THE PROPER PHRASE IS PRINTED WHEN ZERO RUBIES AND ZERO FAKE RUBIES ARE INPUT AS THE PARAMETERS
    def test_zero_real_zero_fake
        rubyInfo = [0,0]
        assert_output("\tFound no rubies or fake rubies in home.\n"){minePrint(rubyInfo, "home")}
    end

    # VERIFIES THAT THE PROPER PHRASE IS PRINTED WHEN TWO RUBIES AND ZERO FAKE RUBIES ARE INPUT AS THE PARAMETERS
    def test_two_real_zero_fake
        rubyInfo = [2,0]
        assert_output("\tFound 2 rubies in home.\n"){minePrint(rubyInfo, "home")}
    end

    # VERIFIES THAT THE PROPER PHRASE IS PRINTED WHEN ONE RUBIES AND ZERO FAKE RUBIES ARE INPUT AS THE PARAMETERS
    def test_one_real_zero_fake
        rubyInfo = [1,0]
        assert_output("\tFound 1 ruby in home.\n"){minePrint(rubyInfo, "home")}
    end

    # VERIFIES THAT THE PROPER PHRASE IS PRINTED WHEN ZERO RUBIES AND TWO FAKE RUBIES ARE INPUT AS THE PARAMETERS
    def test_zero_real_two_fake
        rubyInfo = [0,2]
        assert_output("\tFound 2 fake rubies in home.\n"){minePrint(rubyInfo, "home")}
    end

    # VERIFIES THAT THE PROPER PHRASE IS PRINTED WHEN ZERO RUBIES AND ONE FAKE RUBIES ARE INPUT AS THE PARAMETERS
    def test_zero_real_one_fake
        rubyInfo = [0,1]
        assert_output("\tFound 1 fake ruby in home.\n"){minePrint(rubyInfo, "home")}
    end

    # VERIFIES THAT THE PROPER PHRASE IS PRINTED WHEN TWO RUBIES AND TWO FAKE RUBIES ARE INPUT AS THE PARAMETERS
    def test_two_real_two_fake
        rubyInfo = [2,2]
        assert_output("\tFound 2 rubies and 2 fake rubies in home.\n"){minePrint(rubyInfo, "home")}
    end

    # VERIFIES THAT THE PROPER PHRASE IS PRINTED WHEN ZERO RUBIES AND ZERO FAKE RUBIES ARE INPUT AS THE PARAMETERS
    def test_two_real_one_fake
        rubyInfo = [2,1]
        assert_output("\tFound 2 rubies and 1 fake ruby in home.\n"){minePrint(rubyInfo, "home")}
    end

    # VERIFIES THAT THE PROPER PHRASE IS PRINTED WHEN ZERO RUBIES AND ZERO FAKE RUBIES ARE INPUT AS THE PARAMETERS
    def test_one_real_one_fake
        rubyInfo = [1,1]
        assert_output("\tFound 1 ruby and 1 fake ruby in home.\n"){minePrint(rubyInfo, "home")}
    end

    # VERIFIES THAT THE PROPER PHRASE IS PRINTED WHEN ZERO RUBIES AND ZERO FAKE RUBIES ARE INPUT AS THE PARAMETERS
    def test_one_real_two_fake
        rubyInfo = [1,2]
        assert_output("\tFound 1 ruby and 2 fake rubies in home.\n"){minePrint(rubyInfo, "home")}
    end
end
    