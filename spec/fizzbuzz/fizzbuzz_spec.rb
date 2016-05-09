require 'rails_helper'

­# Standard FizzBuzz rules, divisible by 3 is Fizz, divisible by 5 is Buzz
feature "Fizzbuzz lib tests" do
  it "FizzBuzz" do
     n=3; assert fizzbuzz(n) == 'Fizz', "expected Fizz for #{n}"
     n=5; assert fizzbuzz(n) == 'Buzz', "expected Buzz for #{n}"
     n=15; assert fizzbuzz(n) == 'FizzBuzz', "expected FizzBuzz for #{n}"

     fb=(1..100).map{|n| fizzbuzz(n)}
     assert fb.count == 100
     assert fb.select{|el| el=="Fizz" }.count == 27,  "Fizz off"
     assert fb.select{|el| el=="Buzz" }.count == 14,  "Buzz off"
     assert fb.select{|el| el=="FizzBuzz" }.count == 6,  "FizzBuzz off"
   end   
 end