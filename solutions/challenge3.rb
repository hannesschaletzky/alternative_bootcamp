def vowels_count(word)
  # sum = 0
  # sum += word.split("").count("a")
  # sum += word.split("").count("e")
  # sum += word.split("").count("i")
  # sum += word.split("").count("o")
  # sum += word.split("").count("u")
  word.downcase.split("").count {|letter| "aeiou".include?(letter) }
end


# Challenge for Vincenzo
# return the number of vowels in a word
puts vowels_count("summer") == 2
puts vowels_count("aperol") == 3
