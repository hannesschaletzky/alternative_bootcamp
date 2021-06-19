# frozen_string_literal: true

# Workflow:
# specify the method signature (incl. parameters)

def decimal_to_binary(num)
  negative = false
  negative = true if num.negative?
  num = num.abs
  binary = [num]
  while num > 1
    num /= 2
    binary << num
  end
  "#{negative ? '-' : ''}#{binary.map { |x| x % 2 }.reverse.join}"
end

# p decimal_to_binary(0)
# p decimal_to_binary(1)
# p decimal_to_binary(2)
# p decimal_to_binary(294)
