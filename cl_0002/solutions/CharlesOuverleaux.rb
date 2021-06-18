# frozen_string_literal: true

# Workflow:
# specify the method signature (incl. parameters)

def amount_even_numbers(number)
  count = 0
  number.to_s.split('').each do |n|
    count += 1 if n.to_i.even?
  end
  count
end

p amount_even_numbers(13)
