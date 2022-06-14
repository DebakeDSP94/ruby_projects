def substring(dictionary, strings)
  results = Hash.new(0)
  dictionary.each do |word|
    strings.each do |string|
      if word.include?(string)
        results[string] += 1
        p results
      end
    end
  end
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit", "below", "go"]
strings = ["below", "down", "low", "horn", "it"]
substring(dictionary, strings)
