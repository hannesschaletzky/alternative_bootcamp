# return the count of even digits
def amount_even_numbers(number)
  number.digits.count { |n| n.even? }
end
