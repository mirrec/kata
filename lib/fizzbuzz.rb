class FizzBuzz
  attr_reader :displayer

  def initialize(displayer = Kernel)
    @displayer = displayer
  end

  def print_up_to(number)
    1.upto(number) do |n|
      if n % 15 == 0
        display "fizzbuzz"
      elsif n % 3 == 0
        display "fizz"
      elsif n % 5 == 0
        display "buzz"
      else
        display n
      end
    end
  end

  private

  def display(string)
    displayer.puts(string)
  end
end