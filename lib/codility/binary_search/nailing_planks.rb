# https://codility.com/programmers/task/nailing_planks/
# solution http://codility-lessons.blogspot.sk/2015/03/lesson-11-nailingplanks-nailing-planks.html
module Codility
  module BinarySearch
    module NailingPlanks
      Plank = Struct.new(:from, :to, :nailed)

      # O((n+m)*log(m))
      def solution(a, b, c)
        index = (0..(c.length - 1)).bsearch do |nailing_position|
          # subset from nails
          nails = [0] * (2 * c.length + 1)
          c[0..nailing_position].each do |nail_at|
            nails[nail_at] = 1
          end

          prefix_sums = [0] * (nails.length + 1)
          nails.each_with_index do |element, i|
            prefix_sums[i + 1] = prefix_sums[i] + element
          end

          nailed = 0
          a.each_with_index do |x, i|
            y = b[i]

            if prefix_sums[y + 1] - prefix_sums[x] > 0
              nailed += 1
            end
          end

          a.length <= nailed
        end

        if index
          index + 1
        else
          -1
        end
      end

      # O(n*m)
      def correct_slow_solution(a, b, c)
        max_elements = a.size

        planks = []
        a.each_with_index do |plank_start, index|
          plank_end = b[index]

          planks << Plank.new(plank_start, plank_end, false)
        end


        # n + n + m * n
        nailed = 0

        c.each_with_index do |nailing_point, index|
          planks.each do |plank|
            next if plank.nailed

            if plank.from <= nailing_point && nailing_point <= plank.to
              plank.nailed = true
              nailed += 1

              if max_elements - nailed == 0
                return index + 1
              end
            end
          end
        end

        -1
      end
    end
  end
end