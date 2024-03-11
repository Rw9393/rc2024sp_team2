class Life
  @@life = 3
  @@image1 = Image.load("Image/life.png")
  @@image2 = Image.load("Image/life2.png")
  @@image1.set_color_key(C_RED)
  @@image2.set_color_key(C_RED)

  def initialize
    @frame = 0
  end

  def self.current_life
    @@life
  end

  def life_dec
    if @frame <= 300
      @frame += 1
    else
      @frame = 0
      @@life -= 1
    end
  end

  def update
    if @@life == 3
      Window.draw(0, 2, @@image1)
      Window.draw(50, 2, @@image1)
      Window.draw(100, 2, @@image1)
    elsif @@life == 2
      Window.draw(0, 2, @@image1)
      Window.draw(50, 2, @@image1)
      Window.draw(100, 2, @@image2)
    elsif @@life == 1
      Window.draw(0, 2, @@image1)
      Window.draw(50, 2, @@image2)
      Window.draw(100, 2, @@image2)
    else
      Window.draw(0, 2, @@image2)
      Window.draw(50, 2, @@image2)
      Window.draw(100, 2, @@image2)
    end
  end
end
