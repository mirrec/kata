class FizzBuzz

  def fizz_buzz(number)
    return "fizzbuzz" if number % 15 == 0

    if number % 3 == 0
      "fizz"
    elsif number % 5 == 0
      "buzz"
    else
      number
    end
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