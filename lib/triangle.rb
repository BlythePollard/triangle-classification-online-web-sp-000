class Triangle
 attr_accessor :side_1, :side_2, :side_3
 
 def initialize(side_1, side_2, side_3)
   @side_1 = side_1
   @side_2 = side_2
   @side_3 = side_3
 end
 
 def kind
   validate_triangle
   if side_1 == side_2 && side_2 == side_3
     :equilateral
    elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
     :isosceles
    else 
      :scalene
    end
  end
  
  def validate_triangle
    if ((side_1 + side_2 <= side_3) || (side_2 + side_3 <= side_1) || (side_1 + side_3 <= side_2) || 
      (side_1 <= 0 || side_2 <= 0 || side_3 <= 0))
      raise TriangleError 
    # elsif   
    #   raise TriangleError
    end
end
 

class TriangleError < StandardError
end
end