entity Player
  def string test
    p = Player.new()
    test = "Hi!"
    return test
  end

  def void main
    a = 5
    if (1+2)*2 > a
      Console::out("six is more than 5")
    end

    if 5 > 6
      Console::out("5 is more than 6")
    end

    Console::out(test())
  end
end

def void main
  p = Player::_new()
  p.main()
end


/*
asdfaskdfjasdfl
asdf
asdf

entity Vector2
end

component Physical
end

entity Player
  -Physical
  -Visible

  def update
    if Menu.active
      return draw(1, 3 + vector2.x)
    end
  end

  def draw
  end
end

system Menu
end

enum Color
end
*/
