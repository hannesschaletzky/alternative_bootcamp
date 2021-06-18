require_relative 'challenge'

# think about good tests
# https://github.com/rspec/rspec-expectations

describe 'sum' do
  it 'should return the sum with two positive arguments' do
    expect(sum(5, 4)).to be 9
  end
  it 'should return the sum with one negative argument' do
    expect(sum(-5, 4)).to be -1
  end
  it 'should return the sum with one negative argument' do
    expect(sum(3, -6)).to be -3
  end
  it 'should return the corect sum with two zero parameters' do
    expect(sum(0, 0)).to be 0
  end
end
