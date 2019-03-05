require_relative 'rush_methods'

# map and ruby info population
map_arr = [
      ['Enumerable Canyon', 'Duck Type Beach', 'Monkey Patch City'],
      ['Duck Type Beach', 'Enumerable Canyon', 'Matzburg'],
      ['Monkey Patch City', 'Nil Town', 'Enumerable Canyon', 'Matzburg'],
      ['Nil Town', 'Monkey Patch City', 'Hash Crossing'],
      ['Matzburg', 'Monkey Patch City', 'Duck Type Beach', 'Hash Crossing', 'Dynamic Palisades'],
      ['Hash Crossing', 'Matzburg', 'Nil Town', 'Dynamic Palisades'],
      ['Dynamic Palisades', 'Matzburg', 'Hash Crossing']
    ]
ruby_info_arr = [
    ['Enumerable Canyon', 1, 1],
    ['Duck Type Beach', 2, 2],
    ['Monkey Patch City', 1, 1],
    ['Nil Town', 0, 3],
    ['Matzburg', 3, 0],
    ['Hash Crossing', 2, 2],
    ['Dynamic Palisades', 2, 2]
    ]
# checks to make sure all argument requirements are met
argsCheck(ARGV)
# assign command line arguments
# pseudo random number generator
seed = ARGV[0].to_i
r = Random.new(seed)
# array for prospectors
prospectors = ARGV[1].to_i
rubyist_arr = prospectArrPop(prospectors)
n = 0
# main method
while n < rubyist_arr.length
  # reinitialize for new prospector
  turns = ARGV[2].to_i
  days = 0
  real_rubies = 0
  fake_rubies = 0
  curr_location = 'Enumerable Canyon'
  old_location = 'none'
  curr_rubyist = rubyist_arr[n]
  puts "#{curr_rubyist} starting in Enumerable Canyon"
  while turns > 0
    if old_location != 'none'
      puts "Heading from #{old_location} to #{curr_location}."
    end
    ruby_maxes = getRubyCounts(curr_location, ruby_info_arr)
    rubies_found = mine(ruby_maxes, r)
    real_rubies += rubies_found[0]
    fake_rubies += rubies_found[1]
    minePrint(rubies_found, curr_location)
    days += 1
    while rubies_found[0] != 0 || rubies_found[1] != 0
      ruby_maxes = getRubyCounts(curr_location, ruby_info_arr)
      rubies_found = mine(ruby_maxes, r)
      real_rubies += rubies_found[0]
      fake_rubies += rubies_found[1]
      minePrint(rubies_found, curr_location)
      days += 1
    end
    old_location = curr_location
    curr_location = nextLocation(curr_location, map_arr, r)
    turns -= 1
  end
  n += 1
  puts "After #{days} days, #{curr_rubyist} found:"
  tripSummary(real_rubies, fake_rubies)
  emotionCheck(real_rubies)
end
