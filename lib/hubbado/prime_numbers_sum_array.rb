require 'logger'

class PrimeNumbersSumArray

  def calculate_array( num: 1 )
    if num < 2 || num > 100
      raise 'Argument out of range, valid range [1, 100]'
    end
    resultingArray = Array.new(num){Array.new(num)}

    primeNumbers = get_prime_numbers(num_size: num )

    for i in 0..(num-1)
      for j in 0..(num-1)
        resultingArray[i][j] = (primeNumbers[i] + primeNumbers[j])
      end
    end
    resultingArray
  end

  def get_prime_numbers( num_size: 0 )
    initial_number = 0
    prime_numbers = []
    for x in 0..(num_size-1)
      loop do
        if is_prime?(initial_number)
          prime_numbers << initial_number
          break
        end
        initial_number += 1
      end
      initial_number += 1
    end
    prime_numbers
  end

  def is_prime?(number)
    prime = false
    if ( (number > 1) && ((number == 2) || (number % 2 != 0) ) )
      prime = true
    end
    prime
  end
end
