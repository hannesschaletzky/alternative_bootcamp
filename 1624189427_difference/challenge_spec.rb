# frozen_string_literal: true

require_relative 'challenge'

# for more testing scenarios, look here
# https://github.com/rspec/rspec-expectations
# Make sure that your tests call the actual method you wanna test

describe 'difference_check' do
  it 'should return 5 (not present in second array)' do
    expect(difference_check([1, 2, 3, 4, 5], [1, 2, 3, 4, 6])).to eq([5])
  end
  it 'should return an empty array if a is empty' do
    expect(difference_check([], [1, 2, 3, 4, 6])).to eq([])
  end
  it 'should return an empty array if a and b are equal' do
    expect(difference_check([1, 2], [1, 2])).to eq([])
  end
    it 'should return Nate if Nate is in a but not in b' do
    expect(difference_check(['Hannah', 'Nate'], ['Hannah'])).to eq(['Nate'])
  end
end
