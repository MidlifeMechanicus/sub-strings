# Turn word into an array
# Compare dictionary to array and push to new array for each inclusion
# Then tally

word = "below" 
p word
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"] 
p dictionary

included_words = dictionary.select { |substring| word.include? substring }
p included_words

word_count = included_words.tally
p word_count