require 'minitest/autorun'
require_relative 'rush_methods'

class Arg_tests < Minitest::Test
    # UNIT TEST FOR THE METHOD: argsCheck(args)
    # args.length != 3
    # args[1] < 1
    # args[2] < 1
    # args[0-3] are strings return nil
    # These all return
    
    # TESTS TO SEE IF ARG CHECKER WORKS WHEN ARGUMENTS LOWER THAN THE REQUIRED AMOUNT ARE WRITTEN TO THE COMMAND LINE
    def test_low_arg_count
        args = [1, 2]
        assert_output("Usage:\nruby ruby_rush.rb *seed* *num_prospectors* *num_turns*\n*seed* should be an integer\n*num_prospectors* should be a non-negative integer\n*num_turns* should be a non-negative integer\n"){argsCheck(args)}
    end
    
    # TESTS TO SEE IF ARG CHECKER WORKS WHEN ARGUMENTS HIGHER THAN THE REQUIRED AMOUNT ARE WRITTEN TO THE COMMAND LINE
    def test_high_arg_count
        args = [1, 2, 2, 2]
        assert_output("Usage:\nruby ruby_rush.rb *seed* *num_prospectors* *num_turns*\n*seed* should be an integer\n*num_prospectors* should be a non-negative integer\n*num_turns* should be a non-negative integer\n"){argsCheck(args)}
    end
    
    # TESTS TO SEE IF ARG CHECKER WORKS WHEN ARGUMENT 1 IS LESS THAN 1
    def test_arg1_less_than_one
        args = [1, 0, 2]
        assert_output("Usage:\nruby ruby_rush.rb *seed* *num_prospectors* *num_turns*\n*seed* should be an integer\n*num_prospectors* should be a non-negative integer\n*num_turns* should be a non-negative integer\n"){argsCheck(args)}
    end
    
    # TESTS TO SEE IF ARG CHECKER WORKS WHEN STRINGS ARE PASSED AS A COMMAND LINE ARGUMENT
    def test_arg2_less_than_one
        args = [1, 2, 0]
        assert_output("Usage:\nruby ruby_rush.rb *seed* *num_prospectors* *num_turns*\n*seed* should be an integer\n*num_prospectors* should be a non-negative integer\n*num_turns* should be a non-negative integer\n"){argsCheck(args)}
    end
    
    # EDGE CASE
    # TESTS TO SEE IF ARG CHECKER WORKS WHEN STRINGS ARE PASSED AS A COMMAND LINE ARGUMENT
    def test_arg_is_string
        args = ["hello","Professor", "Laboon"]
        assert_nil argsCheck(args)
    end

    # EDGE CASE
    # TESTS TO SEE IF ARG CHECKERS RESPONSE TO FLOATS
    def test_arg_is_float
        args = [1.1, 2.1, 3.5]
        assert_nil argsCheck(args)
    end

    # EDGE CASE
    # TESTS TO SEE IF ARG CHECKERS RESPONSE TO FLOATS
    def test_arg_is_negative
        args = [-12, -3, 5]
        assert_nil argsCheck(args)
    end
end