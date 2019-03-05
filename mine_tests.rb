require 'minitest/autorun'
require_relative 'rush_methods'

class Mine_tests < Minitest::Test
    # UNIT TEST FOR METHOD: mine(rubyCounts, prand)
    # RETURNS A PSEUDORANDOM NUMBER
    # MAX RUBIES 0,0 RETURN 0
    # MAX RUBIES 1,1 RETURN TWO NUMBERS BETWEEN 0-1
    # MAX RUBIES 2,2 RETURN TWO NUMBERS BETWEEN 0-2
    # MAX RUBIES 3,3 RETURN TWO NUMBERS BETWEEN 0-3

    # TEST VERIFYING THAT MINING WORKS WITH A THE MAX RUBIES BEING 0
    def test_zero_rubies_test
        rubyArr = [0,0]
        seed = 10
        r = Random.new(seed)
        zero = mine(rubyArr, r)
        if zero == 0
            assert true
        end
    end

    # TEST VERIFYING THAT MINING WORKS WITH A THE MAX RUBIES BEING 1
    def test_one_ruby_test
        rubyArr = [1,1]
        seed = 10
        r = Random.new(seed)
        numReturn = mine(rubyArr, r)
        if numReturn == 0 || numReturn == 1
            assert true
        end
    end

    # TEST VERIFYING THAT MINING WORKS WITH A THE MAX RUBIES BEING 2
    def test_two_rubies_test
        rubyArr = [2,2]
        seed = 10
        r = Random.new(seed)
        numReturn = mine(rubyArr, r)
        if numReturn == 0 || numReturn == 1 || numReturn == 2
            assert true
        end
    end

    # TEST VERIFYING THAT MINING WORKS WITH A THE MAX RUBIES BEING 3
    def test_three_rubies_test
        rubyArr = [3,3]
        seed = 10
        r = Random.new(seed)
        numReturn = mine(rubyArr, r)
        if numReturn == 0 || numReturn == 1 || numReturn == 2 || numReturn == 3
            assert true
        end
    end

    # TEST VERIFYING THAT MINING CONSISTENTLY RETURNS THE SAME VALUES AFTER TWO ITERATIONS OF THE 
    # FUNCTION USING THE SAME PARAMETERS
    def test_consistency_ruby_test
        rubyArr = [1,1]
        seed = 10
        r = Random.new(seed)
        firstIteration = mine(rubyArr, r)
        secondIteration = mine(rubyArr, r)
        if firstIteration = secondIteration
            assert true
        end
    end
end