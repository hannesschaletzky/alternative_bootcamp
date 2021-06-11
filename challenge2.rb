def sum_n_numbers(n,array)
  sum = 0
  array.each do |a|
    sum+= a[n-1]
  end
  sum
  # puts array[0][n-1]
end

# Challenge for Charles
# return the sum of each n postitioned item in each array
puts sum_n_numbers(1, [[8,4,5], [3,1,5], [1,2,3]]) == 12
puts sum_n_numbers(2, [[9,5,4], [3,2,6], [2,4,4]]) == 11
