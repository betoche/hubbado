require './lib/hubbado/prime_numbers_sum_array.rb'

describe "prime_numbers_sum_array" do
 it "displays n*n table, such that the content of cell (a,b) is a sum of a-th and b-th prime number for a given n number." do
   app = PrimeNumbersSumArray.new
   expect(app.calculate_array(num: 2)).to eql([[4,5],[5,6]])
 end
end
