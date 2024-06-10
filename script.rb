# This was very difficult for me. I went down the wrong road completely.

test_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

test_string = "Howdy partner, sit down! How's it going?"

def substrings(string, dictionary)
  hash = {}
  string_array = string.downcase.split
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

def alt_substrings(string, dictionary)
  array = []
  string_array = string.downcase.split
  string_array.each do |i|
      dictionary.each do |j|
        if i.include?(j)
          array << j
        end
      end
  end
  array.tally
end

puts alt_substrings(test_string, test_dictionary)

# This is the solution I had originally been going for. I got so caught up in #select and #map that I missed the more obvious #each for the longest time.
#Essentially, I immediately thought of #tally when I read the exercise, and wanted to create an array of matches that I could then #tally. Here it is.