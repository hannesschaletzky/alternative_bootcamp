def amount_even_numbers(number)
  number.digits.count { |n| n.even? }
end

# Challenge for Charles
# return the count of even digits
puts amount_even_numbers(1_654_327_842) == 6
puts amount_even_numbers(8_263_842_368) == 8
puts amount_even_numbers(172_844) == 4
