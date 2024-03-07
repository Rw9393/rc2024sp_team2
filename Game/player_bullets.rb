class Player_bullets < Sprite
    @@image = Image.load("Image/player_bullets.png")

    def initialize(x, y)
        self.x = x + 98
        self.y = y + 55
        self.image = @@image
    end

    def update
        self.x += 5
        if self.x >= 1024
            vanish
        end
    end
end