class Enemy_bullets < Sprite
    @@image = Image.load("Image/enemy_bullets.png")
    @@image.set_color_key(C_RED)

    def initialize(x, y)
        self.x = x 
        self.y = y + 86
        self.image = @@image
    end

    def shot(obj)
        vanish
    end

    def update
        self.x -= 5
        if self.x <= -10
            vanish
        end
    end
end