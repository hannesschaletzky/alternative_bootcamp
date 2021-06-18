# frozen_string_literal: true

require_relative 'challenge'

# for more testing scenarios, look here
# https://github.com/rspec/rspec-expectations
# Make sure that your tests call the actual method you wanna test

# EXAMPLE
# describe 'amount_even_numbers' do
#   it 'should return the amount of even digits' do
#     expect(amount_even_numbers(1_654_327_842)).to be 6
#   end
# end

describe 'smallest_number' do
  it 'should return the count of the smallest number in integer' do
    expect(smallest_digit_amount(64353245194543958345344589)).to be 1
  end
  it 'should return the count of the smallest number in integer' do
    expect(smallest_digit_amount(4305790324053249852350923045)).to be 5
  end
end
