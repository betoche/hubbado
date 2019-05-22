require 'logger'

class PrimeNumbersSumArray
  def initialize
    program_info_message = '**** Hubbado Prime Sum Array Test ****'
    log.info program_info_message
  end

  def calculate_array( num: 0 )
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

  def log
    if @logger.nil?
      @logger = Logger.new STDOUT
      @logger.level = Logger::DEBUG
      @logger.datetime_format = '%Y-%m-%d %H:%M:%S '
    end
    @logger
  end
end

#begin
#  app = PrimeNumbersSumArray.new
#  print 'Input a number: '
#  number = gets.chomp.to_i
#  puts app.calculate_array( num: number )
#end
