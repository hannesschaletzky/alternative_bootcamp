require_relative 'challenge'

# think about good tests
# https://github.com/rspec/rspec-expectations

describe "amount_even_numbers" do
  it "should return the amount of even digits" do
    expect(amount_even_numbers(1_654_327_842)).to be 6
  end
  it "should return the amount of even digits" do
    expect(amount_even_numbers(8_263_842_368)).to be 8
  end
  it "should return the amount of even digits" do
    expect(amount_even_numbers(172_844)).to be 4
  end
end
