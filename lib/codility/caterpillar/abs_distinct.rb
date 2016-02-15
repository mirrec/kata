# https://codility.com/programmers/task/abs_distinct/
module Codility
  module Caterpillar
    module AbsDistinct
      # O(n)
      def solution(a)
        distinct = 0

        x = 0
        y = a.length - 1

        while x <= y
          if a[x].abs < a[y].abs
            last_y = a[y].abs

            distinct += 1

            while a[y].abs == last_y && x <= y
              y -= 1
            end
          elsif a[x].abs > a[y].abs
            last_x = a[x].abs

            distinct += 1
            # x+=1

            while a[x].abs == last_x && x <= y
              x+=1
            end
          elsif a[x].abs == a[y].abs
            distinct += 1

            last_y = a[y].abs
            while a[y].abs == last_y && x <= y
              y -= 1
            end

            last_x = a[x].abs
            while a[x].abs == last_x && x <= y
              x+=1
            end
          end
        end

        distinct
      end

      # O(n)
      def solution_with_hash(a)
        numbers = {}
        a.each do |number|
          numbers[number.abs] = true
        end

        numbers.keys.count
      end
    end
  end
end