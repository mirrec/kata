require 'fizzbuzz'

RSpec.describe "fizzbuzz" do
  class FakeDisplayer
    attr_reader :values

    def initialize
      @values = []
    end

    def puts(argument)
      values << argument.to_s
    end
  end

  it "prints fizzbuzz number from 1 to 15 when 15 is given as parameter" do
    output = FakeDisplayer.new
    FizzBuzz.new(output).print_up_to(15)


    expect(output.values).to eq(
                                 [
                                     "1",
                                     "2",
                                     "fizz",
                                     "4",
                                     "buzz",
                                     "fizz",
                                     "7",
                                     "8",
                                     "fizz",
                                     "buzz",
                                     "11",
                                     "fizz",
                                     "13",
                                     "14",
                                     "fizzbuzz"
                                 ]
                             )
  end

end