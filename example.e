entity Vector2
  float x, y
  Player p

  init(float _x, float _y)
    x = _x
    y = _y
  end

  def float lengthSquared()
    return x^2+y^2
  end

  def string to_s()
    return "{" + x.to_s() + ", " + y.to_s() + "}"
  end

  def Vector2 op_add(Vector2 other)
    return Vector2.new(x + other.x, y + other.y)
  end

  def Vector2 op_add(float amount)
    return Vector2.new(x + amount, y + amount)
  end

  def Vector2 op_add(int amount)
    return op_add(amount.to_f())
  end

  def Vector2 op_sub(Vector2 other)
    return Vector2.new(x - other.x, y - other.y)
  end
end

entity Player
  Vector2 position, velocity

  init(Vector2 _position)
    position = _position
    velocity = Vector2.new(0.0, 0.0)
  end

  def void update()
    position += velocity
  end

  def string to_s()
    return "<Player: @position=" + position.to_s() + "; @velocity=" + velocity.to_s() + ";>"
  end
end

def int main
  Console::out("test")
end