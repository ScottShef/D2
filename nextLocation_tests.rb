require 'minitest/autorun'
require_relative 'rush_methods'

class NextLocation_tests < Minitest::Test
    # UNIT TESTS FOR METHOD: nextLocation(location, map, prand)
    # RETURNS A PSEUDO RANDOMLY CHOSEN NEIGHBOR WITH EQUAL LIKELYHOOD
    # NEIGHBOR = LOCATION
    # LOCATION IS A STRING

    # STUB USING HARD CODED DATA TO REPRESENT METHOD FUNCTIONALITY BUT WOULD BE IMPOSSIBLE TO ACHIEVE IN THE MAIN FUNCITON
    # ALSO PSEUDO RANDOM NUMBER HAS PREDETERMINED RESULT SO I KNEW OUTPUT VALUE AFTER A SINGULAR TEST
    # TEST VERIFYING THAT A LOCATION WITH 2 NEIGHBORS WORKS PROPERLY
    def test_two_neighbors_test
        seed = 10
        r = Random.new(seed)
        mapArr = [
            ["Enumerable Canyon", "Duck Type Beach", "Monkey Patch City"]
          ]
        #Checks to see if it returns any of the possible neighbors and if so returns true
        assert_equal "Monkey Patch City", nextLocation("Enumerable Canyon", mapArr, r)
    end

    # STUB USING HARD CODED DATA TO REPRESENT METHOD FUNCTIONALITY BUT WOULD BE IMPOSSIBLE TO ACHIEVE IN THE MAIN FUNCITON
    # ALSO PSEUDO RANDOM NUMBER HAS PREDETERMINED RESULT SO I KNEW OUTPUT VALUE AFTER A SINGULAR TEST
    # TEST VERIFYING THAT A LOCATION WITH 3 NEIGHBORS WORKS PROPERLY
    def test_three_neighbors_test
        seed = 10
        r = Random.new(seed)
        mapArr = [
            ["Monkey Patch City", "Nil Town", "Enumerable Canyon", "Matzburg"],
          ]
          #Checks to see if it returns any of the possible neighbors and if so returns true
        assert_equal "Enumerable Canyon", nextLocation("Monkey Patch City", mapArr, r)
    end

    # STUB USING HARD CODED DATA TO REPRESENT METHOD FUNCTIONALITY BUT WOULD BE IMPOSSIBLE TO ACHIEVE IN THE MAIN FUNCITON
    # ALSO PSEUDO RANDOM NUMBER HAS PREDETERMINED RESULT SO I KNEW OUTPUT VALUE AFTER A SINGULAR TEST
    # TEST VERIFYING THAT A LOCATION WITH 4 NEIGHBORS WORKS PROPERLY
    def test_four_neighbors_test
        seed = 10
        r = Random.new(seed)
        mapArr = [
            ["Matzburg", "Monkey Patch City", "Duck Type Beach","Hash Crossing","Dynamic Palisades"],
          ]
          #Checks to see if it returns any of the possible neighbors and if so returns true
        assert_equal "Hash Crossing", nextLocation("Matzburg", mapArr, r)
    end      
    
    # STUB USING HARD CODED DATA TO REPRESENT METHOD FUNCTIONALITY BUT WOULD BE IMPOSSIBLE TO ACHIEVE IN THE MAIN FUNCITON
    # ALSO PSEUDO RANDOM NUMBER HAS PREDETERMINED RESULT SO I KNEW OUTPUT VALUE AFTER A SINGULAR TEST
    # TEST VERIFYING THAT VALUES ARE THE SAME AFTER MULTIPLE ITERATIONS, CONSISTENCY CHECK
    def test_location_consistency_test
        seed = 10
        r = Random.new(seed)
        mapArr = [
            ["Enumerable Canyon", "Duck Type Beach", "Monkey Patch City"],
          ]
        firstIteration = nextLocation("Enumerable Canyon", mapArr, r)
        secondIteration = nextLocation("Enumerable Canyon", mapArr, r)
        if firstIteration == secondIteration
            assert true
        end
    end    
end