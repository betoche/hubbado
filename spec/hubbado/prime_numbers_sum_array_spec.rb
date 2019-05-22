require './lib/hubbado/prime_numbers_sum_array.rb'

describe "prime_numbers_sum_array" do
  let(:app) {PrimeNumbersSumArray.new}

  it "passes for argument 2" do
    expect( app.calculate_array(num: 2) ).to eql([[4,5],[5,6]])
  end

  it "fails when given a n number equals to 0" do
    expect{ app.calculate_array(num: 0) }.to raise_error('Argument out of range, valid range [1, 100]')
  end

  it "fails when given a n number greater than 100" do
    expect{ app.calculate_array(num: 101) }.to raise_error('Argument out of range, valid range [1, 100]')
  end
end
