# Implement a method #substrings that takes a word as the first argument and 
# then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive)
# that was found in the original string and how many times it was found.

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, arr)
    str_arr = str.downcase.split
    hash = {}

    str_arr.each do |str_char|
        arr.each do |dict_char|
            if str_char.include?(dict_char)
                if hash.has_key?(dict_char)
                    hash[dict_char] += 1
                else hash[dict_char] = 1 
                end
            end
        end
    end
    puts hash
end

substrings("below", dictionary)

