
    # FILE CONTAINING ALL METHODS USED IN RUBY RUSH
    
    # checks all argument restrictions
    def argsCheck(args)
        if args.length != 3 || args[1].to_i < 1 || args[2].to_i < 1   # may need to switch this to 2
            puts "Usage:"
            puts "ruby ruby_rush.rb *seed* *num_prospectors* *num_turns*"
            puts "*seed* should be an integer"
            puts "*num_prospectors* should be a non-negative integer"
            puts "*num_turns* should be a non-negative integer"
        end
    end
    
    # returns string array for number of prospectors in form "Rubyist #n" 
    def prospectArrPop(prospectNum)
        prospect_arr = Array.new
        n = 0
        i = 1
        while n < prospectNum
            prospect = "Rubyist #" + i.to_s
            prospect_arr.insert(n, prospect)
            i += 1
            n += 1
        end
        return prospect_arr
    end

    # gets next location for ruby search
    def nextLocation(location, map, prand)
        for i in 0 ... map.length
            if location == map[i][0]
                neighbor_count = map[i].length-1
                if neighbor_count == 2
                    r = prand.rand(10)      # has to be divisible by 2 to have equal likelyhood
                    if r <= 4
                        new_location = map[i][1].to_s
                    else
                        new_location = map[i][2].to_s
                    end
                elsif neighbor_count == 3
                    r = prand.rand(9)      # has to be divisible by 3 to have equal likelyhood
                    if r <= 2
                        new_location = map[i][1].to_s
                    elsif r <= 6
                        new_location = map[i][2].to_s
                    else
                        new_location = map[i][3].to_s
                    end
                else    # neighbor_count must == 4
                    r = prand.rand(12)      # has to be divisible by 4 to have equal likelyhood
                    if r <= 2
                        new_location = map[i][1].to_s
                    elsif r <= 6
                        new_location = map[i][2].to_s
                    elsif r <= 9
                        new_location = map[i][3].to_s
                    else
                        new_location = map[i][4].to_s
                    end
                end
            end
        end
        return new_location
    end

    # returns an array index 1 being max rubies, index 2 being max fake rubies
    def getRubyCounts(location, rubyInfo)
        for i in 0 ... rubyInfo.length
            if location == rubyInfo[i][0]
                max_rubies = rubyInfo[i][1]
                max_fake_rubies = rubyInfo[i][2]
            end
        end
        return rubies = [max_rubies, max_fake_rubies]
    end

    # returns an array with the found real and fake rubies
    def mine(rubyCounts, prand)
        i=0
        while i < 2
            curr_search = rubyCounts[i]
            if curr_search == 0
                rubyCounts[i] = 0
            elsif curr_search == 1
                r = prand.rand(10)      # has to be divisible by 2 to have equal likelyhood
                if r <= 4
                    rubyCounts[i] = 0
                else
                    rubyCounts[i] = 1
                end
            elsif curr_search == 2
                r = prand.rand(9)      # has to be divisible by 3 to have equal likelyhood
                if r <= 2
                    rubyCounts[i] = 0
                elsif r <= 6
                    rubyCounts[i] = 1
                else
                    rubyCounts[i] = 2
                end
            else
                r = prand.rand(12)      # has to be divisible by 4 to have equal likelyhood
                if r <= 2
                    rubyCounts[i] = 0
                elsif r <= 6
                    rubyCounts[i] = 1
                elsif r <= 9
                    rubyCounts[i] = 2
                else
                    rubyCounts[i] = 3
                end
            end
            i += 1
        end
        return rubyCounts
    end

    def minePrint(rubyInfo, location)
        real_rubies = rubyInfo[0]
        fake_rubies = rubyInfo[1]
        if real_rubies == 0 && fake_rubies == 0
            puts "\tFound no rubies or fake rubies in #{location}."
        elsif real_rubies > 0 && fake_rubies == 0
            if real_rubies > 1  # plural cases
                puts "\tFound #{real_rubies} rubies in #{location}."
            else
                puts "\tFound 1 ruby in #{location}."
            end
        elsif real_rubies == 0 && fake_rubies > 0
            if fake_rubies > 1  # plural cases
                puts "\tFound #{fake_rubies} fake rubies in #{location}."
            else
                puts "\tFound 1 fake ruby in #{location}."
            end
        elsif real_rubies > 0 && fake_rubies > 0
            if real_rubies > 1 && fake_rubies > 1 # plural cases
                puts "\tFound #{real_rubies} rubies and #{fake_rubies} fake rubies in #{location}."
            elsif real_rubies > 1 && fake_rubies == 1
                puts "\tFound #{real_rubies} rubies and 1 fake ruby in #{location}."
            elsif real_rubies == 1 && fake_rubies == 1
                puts "\tFound 1 ruby and 1 fake ruby in #{location}."
            else
                puts "\tFound 1 ruby and #{fake_rubies} fake rubies in #{location}."
            end
        end
        return
    end

    # prints rubies found at end of prospectors mining trip
    def tripSummary(real_rubies, fake_rubies)
        if real_rubies == 1
            puts "\t1 ruby."
        else
            puts "\t#{real_rubies} rubies."
        end
        if fake_rubies == 1
            puts "\t1 fake ruby."
        else
            puts "\t#{fake_rubies} fake rubies."
        end
    end

    def emotionCheck(rubies)
        if rubies >= 10
            puts "Going home victorious!"
        elsif rubies <= 9 && rubies >= 1
            puts "Going home sad."
        else 
            puts "Going home empty-handed."
        end
    end
