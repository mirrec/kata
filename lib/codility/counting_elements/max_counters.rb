module Codility
  module CountingElements
    module MaxCounters
      def correct_solution(n, a)
        results = {}
        # n
        1.upto(n) { |i| results[i] = 0 }

        max = 0

        #
        a.each do |element|
          if element >= 1 && element <= n
            results[element] += 1

            if results[element] > max
              max = results[element]
            end
          end

          # thus is an issues
          if element == (n + 1)
            1.upto(n) { |i| results[i] = max }
          end
        end

        results.values
      end

      def solution(n, a)
        results = {}
        # n
        1.upto(n) { |i| results[i] = 0 }

        last_set_maximum = 0
        local_max = 0

        # m
        a.each do |element|
          if element >= 1 && element <= n
            if results[element] < last_set_maximum
              results[element] = last_set_maximum + 1
            else
              results[element] += 1
            end

            if results[element] > local_max
              local_max = results[element]
            end
          end

          # thus is an issues
          if element == (n + 1)
            last_set_maximum = local_max
          end
        end

        # n
        results.values.map do |element|
          if element < last_set_maximum
            last_set_maximum
          else
            element
          end
        end
      end
    end
  end

end