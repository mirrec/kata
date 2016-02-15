# https://codility.com/programmers/task/count_triangles/
module Codility
  module Caterpillar
    module CountTriangles
      # O(n^2)
      def solution(a)
        sorted = a.sort

        triangles = 0
        (0..a.length - 3).each do |x|
          z = x + 2
          (x + 1..a.length - 2).each do |y|
            while z < a.length && (sorted[x] + sorted[y] > sorted[z])
              z+=1
            end
            triangles += z - y - 1
          end
        end

        triangles
      end

      # O(n^3)
      def solution_n_cubit(a)

        triangles = 0
        (0..a.length - 3).each do |x|
          (x + 1..a.length - 2).each do |y|
            (y + 1..a.length - 1).each do |z|
              if a[x] + a[y] > a[z] &&
                  a[y] + a[z] > a[x] &&
                  a[z] + a[x] > a[y]

                triangles+=1
              end
            end
          end
        end

        triangles
      end
    end
  end
end