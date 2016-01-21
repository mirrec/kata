# https://codility.com/media/train/solution-flags.pdf
module Codility
  module Prime
    module Flags
      def find_peak_positions(a)
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

      def solution(a)
        # [1, 2, 3] 1 => 3
        # [1, 2,3, 4,5] 2 => 5
        # [1, 2,3,4, 5,6,7, 8,9] 3 => 9
        # [1, 2,3,4,5, 6,7,8,9, 10,11,12,13, 14,15 ] 4 => 15
        peaks = find_peak_positions(a)
        next_peak = next_peak_position(peaks)

        max_flags = 0

        i = 1
        while (i * (i-1) + 2) <= a.length && i <= peaks.count
          possible_flags = i
          pointed_flags = 0
          current_position = 0

          while next_peak.has_key?(current_position) && possible_flags > 0
            current_position = next_peak[current_position]
            current_position += i
            pointed_flags += 1
            possible_flags -= 1
          end

          if pointed_flags > max_flags
            max_flags = pointed_flags
          end

          i += 1
        end

        max_flags
      end
    end
  end
end