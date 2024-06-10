# This was very difficult for me. I went down the wrong road completely.

test_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

test_string = "Howdy partner, sit down! How's it going?"

def substrings(string, dictionary)
  hash = {}
  string_array = string.downcase.split
  p string_array
  string_array.each do |i|
    dictionary.each do |j|
      if i.include?(j)
        if hash.has_key?(j)
          hash[j] += 1
        else
          hash[j] = 1
        end
      end
    end
  end
  hash
end

puts substrings(test_string, test_dictionary)