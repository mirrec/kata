class FizzBuzz
  class Number3
    def self.match?(number)
      number % 3 == 0
    end

    def self.fizz_buzz(number)
      "fizz"
    end
  end

  class Number5
    def self.match?(number)
      number % 5 == 0
    end

    def self.fizz_buzz(number)
      "buzz"
    end
  end

  class Number15
    def self.match?(number)
      number % 15 == 0
    end

    def self.fizz_buzz(number)
      "fizzbuzz"
    end
  end

  class NumberDefault
    def self.match?(number)
      true
    end

    def self.fizz_buzz(number)
      number
    end
  end

  def fizz_buzz(number)
    number_klass = [
        Number15, Number5, Number3, NumberDefault
    ].find{ |number_klass| number_klass.match?(number) }
    number_klass.fizz_buzz(number)
  end

  def fizz_buzz_upto(number)
    1.upto(number).map do |number|
      "#{fizz_buzz(number)}\n"
    end.join
  end

  def print_upto(number)
    puts fizz_buzz_upto(number)
  end
end