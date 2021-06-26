class Point
  attr_accessor :x, :y

  def initialize(x, y)
    @x, @y = x, y
  end

  def distance(p2)
    p2 = self.minus(p2)
    "二つの座標の距離は" + (Math.sqrt(p2.x ** 2 + p2.y ** 2)).to_s + "です。"
  end

  def angle(p2)
    p2 = self.minus(p2)
    "二つの座標の角度は、水平を0度とした場合の右上がり" + 
      (Math.atan(p2.x / p2.y) * 180 / Math::PI).to_s + "度です。"
  end

  #辺の長さを計算するメソッド　長辺をself.x、短辺をself.yに格納
　private
  def minus(p2)
    self.x, self.y = (self.x - p2.x).abs , (self.y - p2.y).abs
    self.x, self.y = self.y , self.x if self.x < self.y
    self
  end

end

p1 = Point.new(3,4)
p2 = Point.new(6,9)



# 距離を求める場合
p p1.distance(p2)

# 角度を求める場合
p p1.angle(p2)