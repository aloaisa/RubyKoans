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
	
	if (a < 0) || (b < 0) || (c < 0) || ((a + b) <= c) || ((c + a) <= b) || ((b + c) <= a)
		raise TriangleError
	end

	if (a == b) and (a == c)
		if (a == 0)
			raise TriangleError	
		else
			:equilateral
		end

	elsif (a == b) or (a == c) or (b == c)
		:isosceles
	elsif (a != b) and (a != c) and (b != c)
		:scalene
	else
		raise TriangleError
	end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
