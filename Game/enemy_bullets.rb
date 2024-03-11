class Enemy_bullets < Sprite
    @@image1 = Image.load("Image/enemy_bullets.png")
    @@image2 = Image.load("Image/enemy_bullets2.png")
    @@image1.set_color_key(C_RED)
    @@image2.set_color_key(C_RED)

    def initialize(x, y)
        self.x = x
        self.y = y + 86
        self.image = @@image1
        @shot = false
        @wait_frame = 0
    end

    def shot(obj)
        @shot = true
        if @wait_frame <= 180
            @wait_frame += 1
            self.image = @@image2
        else
            vanish
        end
    end

    def update
        if @shot == false
            self.x -= 5
            if self.x <= -10
                vanish
            end
        end
    end
end
