module FizzBuzz
  #
  # Standard FizzBuzz rules, divisible by 3 is Fizz, divisible by 5 is Buzz
  #
  # Standard FizzBuzz rules dictate FizzBuzz when % 15, so keeping that in the rule
  #
  def fizzbuzz(num)
    return 'FizzBuzz' if is_divisible_by_fifteen?(num)
    return 'Buzz' if is_divisible_by_five?(num)
    return 'Fizz' if is_divisible_by_three?(num)
    num
  end
  def is_divisible_by(num, divisor)
    num % divisor == 0
  end
     
  def is_divisible_by_three?(num)
    is_divisible_by(num, 3)
  end
   
  def is_divisible_by_five?(num)
    is_divisible_by(num, 5)
  end
   
  def is_divisible_by_fifteen?(num)
    is_divisible_by(num, 15)
  end
   

end   