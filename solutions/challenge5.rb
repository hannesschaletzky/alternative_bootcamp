def count_names_with_letter(letter, names)
    #add your code here
    count = 0
    names.each { |name| count += 1 if name.include?(letter)}
    return count
end

# challenge for Wagoney
# returns the count of names that have the letter passed as argument

puts count_names_with_letter('e', ['Sarah', 'Ryan', 'Andre']) == 1
puts count_names_with_letter('a', ['Erik', 'Valentina', 'Hannah', 'Charles-Antoine']) == 3
puts count_names_with_letter('i', ['Maxim', 'Hannes', 'Vincenzo', 'Vojtech']) == 2


# Hannahs Solution
def count_names_with_letter(letter, names)
    #add your code here
    counter = 0
    names.each do |name| 
        counter += 1 if name.include?(letter)
    end
    return counter
end