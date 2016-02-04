module Codility
  module Caterpillar
    module Lesson
      def sub_sum?(a, sub_sum)
        total = 0
        y = 0

        (0..(a.length - 1)).each do |x|
          while y < a.length && total + a[y] <= sub_sum
            total += a[y]
            # puts "#{x}..#{y} = #{total}"
            y += 1

            return true if total == sub_sum
          end

          total -= a[x]
          # puts "#{x + 1}..#{y - 1} = #{total}"
        end

        false
      end

      def triangles(a)
        n = a.length
        result = 0

        (0..(n - 1)).each do |x|
          z = x + 2
          ((x+1)..(n-1)).each do |y|
            while z < n && a[x] + a[y] > a[z]
              z += 1
            end

            result += z - y - 1
          end
        end

        result
      end
    end
  end
end
