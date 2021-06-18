# frozen_string_literal: true

require_relative 'challenge'

describe 'decimal_to_binary' do
  it 'should return the binary for 105' do
    expect(decimal_to_binary(105)).to eq('1101001')
  end
  it 'should return the binary for 3' do
    expect(decimal_to_binary(3)).to eq('11')
  end
  it 'should return the binary for 607' do
    expect(decimal_to_binary(607)).to eq('1001011111')
  end
  it 'should return the binary for 532329103' do
    expect(decimal_to_binary(532329103)).to eq('11111101110101011001010001111')
  end
  it 'should return the binary for -83' do
    expect(decimal_to_binary(-83)).to eq('-1010011')
  end
  it 'should return the binary for 0' do
    expect(decimal_to_binary(0)).to eq('0')
  end
end
