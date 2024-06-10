word = "below"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"] 

def substrings (word, dictionary) 
    dictionary.select { |substring| word.include? substring }
end
