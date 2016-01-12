module Codility
  class Iterations
    def self.triangle(n)
      for i in 1..n
        for j in 1..i
          print "* "
        end
        print "\n"
      end
    end

    def self.reverse_triangle(rows)
      stars = lambda{ |n| 2*n - 1 }
      indentation = lambda { |n, rows| 2*(rows-n) }

      # 4, 0 -> 0
      # 3, 1 -> 2
      # 2, 2 -> 4
      # 1, 3 -> 6

      rows.downto(1).each do |i|
        print(' ' * indentation.call(i, rows))
        puts "* " * stars.call(i)
      end
    end

    def self.fib(n)
      return 1 if n == 1
      return 0 if n == 0

      fib(n - 1) + fib(n - 2)
    end
  end
end