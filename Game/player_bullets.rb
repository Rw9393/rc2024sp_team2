class Player_bullets < Sprite
    @@image = Image.load("Image/player_bullets.png")
    @@image.set_color_key(C_RED)

    def initialize(x, y)
        self.x = x + 98
        self.y = y + 55
        self.image = @@image
    end

    def shot(obj)
        vanish
    end

    def update
        self.x += 5
        if self.x >= 1024
            vanish
        end
    end
end