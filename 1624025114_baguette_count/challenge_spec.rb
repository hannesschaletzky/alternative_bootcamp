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

describe 'oven_cost' do
  it 'should return 15 if the baker only changed temperature once' do
    expect(oven_cost(['B', 'C', 'C'])).to be 15
  end
  it 'should return 20 if the baker changed twice the oven temperature ' do
    expect(oven_cost(['C','C','B','C','C'])).to be 20
  end
  it 'should return 0 if the baker did not touch the oven, come on! ' do
    expect(oven_cost([])).to be 0
  end
end
