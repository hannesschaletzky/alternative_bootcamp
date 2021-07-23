# frozen_string_literal: true

# Challenge:
# maskify takes a string as an argument
# replace/mask characters with '#' except first and last four
# but never mask letters, only digits
# never mask creditCard with less then 6 characters

def maskify(creditCard)
  creditCard.gsub(/(?<=.)\d(?=.{4})/, "#")
end
