# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    # arr = name_hash.collect { |k, v|
    #     [k, v]
    # }
    
    # min_name = nil
    # min = nil
    # counter = 0
    # arr.each {|e|
    #     counter += 1
    #     if counter == 1
    #         min_name = e[0]
    #         min = e[1]
    #     else
    #         if e[1] < min
    #             min_name = e[0]
    #             min = e[1]
    #         end
    #     end
    # }
    min_name = nil
    min = nil
    counter = 0
    name_hash.each {|k, v|
        counter += 1
        if counter == 1
            min_name = k
            min = v
        else
            if v < min
                min_name = k
                min = v
            end
        end
    }

    min_name
end

# hash = { :blake => 500, :son => 1, :ashley => 2 }
# p key_for_min_value(hash)
