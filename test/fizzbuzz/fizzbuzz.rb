require './test/test_helper'
include FizzBuzz

class FizzBuzzTest < ActiveSupport::TestCase
   test "loadfizz" do
     assert true
   end

   test "FizzBuzz" do
     n=3; assert fizzbuzz(n) == 'Fizz', "expected Fizz for #{n}"
     n=5; assert fizzbuzz(n) == 'Buzz', "expected Buzz for #{n}"
     n=15; assert fizzbuzz(n) == 'FizzBuzz', "expected FizzBuzz for #{n}"

     fb=(1..100).map{|n| fizzbuzz(n)}
     assert fb.count == 100
     assert fb.select{|el| el=="Fizz" }.count == 27
     assert fb.select{|el| el=="Buzz" }.count == 14
     assert fb.select{|el| el=="FizzBuzz" }.count == 6
   end   
end
