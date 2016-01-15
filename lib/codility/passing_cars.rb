module Codility
  module PassingCars
    def sums_from_to(prefix_sums, from, to)
      prefix_sums[to + 1] - prefix_sums[from]
    end

    def solution(a)
      sum = a.inject(0) { |sum, element| sum + element }
      count = 0

      a.each do |element|
        if element == 1
          sum -= 1
        else
          count += sum
          if count > 1_000_000_000
            return -1
          end
        end
      end

      count
    end

    def fast_solution(a)
      prefix_sums = [0] * (a.length + 1)

      a.each_with_index do |element, index|
        prefix_sums[index + 1] = prefix_sums[index] + element
      end


      count = 0
      a.each_with_index do |element, index|
        if element == 0
          count += prefix_sums[a.length] - prefix_sums[index + 1]

          if count > 1_000_000_000
            return -1
          end
        end
      end

      count
    end

    def correct_solution(a)
      count = 0

      a.each_with_index do |element, index|
        next if element == 1

        if element == 0
          count += a[(index+1)..-1].select{ |element_inner| element_inner == 1 }.count

          if count > 1_000_000_000
            return -1
          end
        end
      end

      count
    end
  end
end