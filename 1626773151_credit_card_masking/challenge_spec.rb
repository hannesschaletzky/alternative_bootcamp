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

describe 'your method name' do
  it 'masks a regular credit card number correctly' do
    expect(maskify("4532994633460848")).to be "4###########0848"
  end
  it 'masks shorter credit card numbers equally' do
    expect(maskify("64607935616")).to be "6######5616"
  end
  it 'should return unmasked input if less then six digits' do
    expect(maskify("88691")).to be "88691"
  end
  it 'does not mask any non-digit characters' do
    expect(maskify("ABCD-HELL-TEST-HAHA")).to be "ABCD-HELL-TEST-HAHA"
  end
  it 'does not mask any non-digit characters when mixed with numbers' do
    expect(maskify("3BCD-4353-TEST-H2HA-3453")).to be "3BCD-####-TEST-H#HA-3453"
  end
  it 'should return words unmasked' do
    expect(maskify("Wagoneey")).to be "Wagoneey"
  end
  it 'should return an empty string if inputted an empty string' do
    expect(maskify("")).to be ""
  end
end
