# frozen_string_literal: true

# Workflow:
# specify the method signature (incl. parameters)

def decimal_to_binary(num)
  negative = false
  negative = true if num.negative?
  num = num.abs
  arr = [num]
  while num > 1
    num /= 2
    arr << num
  end
  "#{negative ? '-' : ''}#{arr.map { |x| x % 2 }.reverse.join}"
end

# p decimal_to_binary(0)
# p decimal_to_binary(1)
# p decimal_to_binary(2)
# p decimal_to_binary(294)
