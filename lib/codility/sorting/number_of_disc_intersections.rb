module Codility
  module Sorting
    module NumberOfDiscIntersections

      def solution(a)
        line_map = []

        a.each_with_index.each do |length, middle|
          line_map << [middle - length, 0]
          line_map << [middle + length, 1]
        end

        sorted = line_map.sort do |point_1, point_2|
          if (point_1[0] <=> point_2[0]) == 0
            point_1[1] - point_2[1]
          else
            point_1[0] <=> point_2[0]
          end
        end

        intersections = 0

        lines = 0
        sorted.each do |point|
          if point[1] == 0
            intersections += lines
            if intersections > 10_000_000
              return -1
            end
            lines += 1
          else
            lines -= 1
          end
        end

        intersections
      end

      def correct_solution(a)
        lines = a.each_with_index.map do |length, middle|
          [middle - length, middle + length]
        end.sort { |point_1, point_2| point_1[0] <=> point_2[0] }

        intersections = 0

        lines.each_with_index do |line, index|
          if index < (lines.length - 1)
            lines[(index+1)..-1].each do |inter_line|
              if line[0] <= inter_line[0] && inter_line[0] <= line[1]
                intersections += 1

                if intersections > 10_000_000
                  return -1
                end
              else
                break
              end
            end
          end
        end

        intersections
      end
    end
  end
end
