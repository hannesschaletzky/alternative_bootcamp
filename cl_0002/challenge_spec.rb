# frozen_string_literal: true

require_relative 'challenge'

# for more testing scenarios, look here
# https://github.com/rspec/rspec-expectations
# Make sure that your tests call the actual method you wanna test

# EXAMPLE
describe 'amount_even_numbers' do
  it 'should return the amount of even digits' do
    expect(amount_even_numbers(1_654_327_842)).to be 6
  end
end
