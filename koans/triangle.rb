# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  tri_array=[a,b,c].sort
  raise TriangleError if tri_array[0]<=0
  raise TriangleError if tri_array[0]+tri_array[1]<=tri_array[2]
  if a==b&&b==c
    return :equilateral
  elsif tri_array.uniq.count==2
    return :isosceles
  elsif
    tri_array.uniq.count==3
    return :scalene
  end
  # WRITE THIS CODE
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
