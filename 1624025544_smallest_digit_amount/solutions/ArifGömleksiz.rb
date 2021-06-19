# frozen_string_literal: true

# Workflow:
# specify the method signature (incl. parameters)

# Count the amount of times the smallest digit in an
def smallest_digit_amount(number)
  number.digits.count { |digit| digit == number.digits.min }
end
