require 'fizzbuzz'

RSpec.describe "fizzbuzz" do
  it "prints number from 1 to 10 when number is 10" do
    output = with_captured_stdout do
      FizzBuzz.new.print_up_to(15)
    end


    expect(output).to eq(
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
                              "fizzbuzz\n"
                          ].join("\n")
                      )
  end

  def with_captured_stdout
    begin
      old_stdout = $stdout
      $stdout = StringIO.new('','w')
      yield
      $stdout.string
    ensure
      $stdout = old_stdout
    end
  end
end