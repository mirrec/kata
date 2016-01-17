module Codility
  module Sorting
    def merge_sort(a)
      if a.length > 2
        # split

        left_part = a[0..((a.length - 1) / 2)]
        right_part = a[((a.length - 1) / 2 + 1)..-1]

        sorted_left_part = merge_sort(left_part)
        sorted_right_part = merge_sort(right_part)

        puts sorted_left_part.inspect
        puts sorted_right_part.inspect

        merged = []

        while sorted_left_part.length > 0 || sorted_right_part.length > 0
          if sorted_left_part.length > 0 && sorted_right_part.length > 0
            if sorted_left_part[0] > sorted_right_part[0]
              merged << sorted_right_part.shift
            else
              merged << sorted_left_part.shift
            end
          elsif sorted_left_part.length > 0
            merged << sorted_left_part.shift
          elsif sorted_right_part.length > 0
            merged << sorted_right_part.shift
          end
        end

        puts merged.inspect
        merged
      elsif a.length == 2
        if a[0] > a[1]
          [a[1], a[0]]
        else
          a
        end
      else
        a
      end
    end
  end
end