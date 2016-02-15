# https://codility.com/programmers/task/peaks/
module Codility
  module Prime
    module Peaks
      def peak_positions(a)
        peak_positions = []
        was_raising = false

        last_element = a[0]
        a.each_with_index do |element, index|
          next if index == 0

          if was_raising && last_element > element
            peak_positions << index - 1
          end

          if last_element < element
            was_raising = true
          else
            was_raising = false
          end

          last_element = element
        end

        peak_positions
      end

      def next_peak_position(peaks)
        next_peak = {}

        last_ending = -1
        peaks.each do |peak_position|

          last_ending += 1
          last_ending.upto(peak_position).each do |position|
            next_peak[position] = peak_position

            last_ending = position
          end
          next_peak
        end

        next_peak
      end

      # probably O(n*log(log(n)))
      def solution(a)
        peaks = peak_positions(a)
        next_peak = next_peak_position(peaks)

        # find all possible dividers
        dividers = []
        n = a.length
        i = 1
        while (i * i) <= n
          if n % i == 0
            dividers << [i, n / i]
            if n / i != i
              dividers << [n / i, i]
            end
          end

          i += 1
        end

        max = 0

        # if block size is 2 or less, it is impossible to have peak in every block
        dividers = dividers.select { |_, block_size| block_size > 2 }

        # check if each block has at least one peak
        dividers.each do |block_count, block_size|
          all_has_peak = true
          block_count.times do |i|

            if next_peak.key?(i * block_size)
              peak_position = next_peak[i * block_size]
              all_has_peak = all_has_peak && peak_position <= (i * block_size + block_size - 1)
            else
              all_has_peak = false
            end

            break unless all_has_peak
          end

          if all_has_peak && block_count > max
            max = block_count
          end
        end

        max
      end
    end
  end
end
