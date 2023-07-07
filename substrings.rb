require 'pry-byebug'

def substrings(string, dictionary)
    result = Hash.new(0)
    for dict_word in dictionary
        for i in 0...string.length
            if string[i...i+dict_word.length] == dict_word 
                result[dict_word] += 1
            end
        end
    end
    return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)